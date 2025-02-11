import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dbus/dbus.dart';

import 'kwin_dbus.dart';
import 'kwin_scripting_dbus.dart';

/// Service that interacts with KWin.
class KWin {
  KWin() {
    _listenToScriptOutput();
  }

  final _kwinScriptingDBus = KwinScriptingDBus(DBusClient.session());
  final _kwinDBus = KWinDBus(DBusClient.session());

  Future<bool> isScriptLoaded(String pluginName) async {
    return await _kwinScriptingDBus.callisScriptLoaded(pluginName);
  }

  Future<void> loadScript(String scriptPath, String pluginName) async {
    // Attempt to unload the script first in case it was already loaded, as KWin
    // does not allow reloading scripts.
    await unloadScript(pluginName);

    await _kwinScriptingDBus.callloadScript(scriptPath, pluginName);
    await _kwinDBus.callreconfigure();
  }

  Future<void> unloadScript(String pluginName) async {
    await _kwinScriptingDBus.callunloadScript(pluginName);
  }

  /// Stream of script output.
  Stream<String> get scriptOutput => _scriptOutputController.stream;

  /// Controller for script output stream.
  final _scriptOutputController = StreamController<String>.broadcast();

  /// Listens to the output of the script, and adds it to the script output stream.
  ///
  /// This method of listening to the output currently only works if KWin Scripting is set to
  /// `Full Debug`.
  Future<void> _listenToScriptOutput() async {
    if (runningInFlatpak()) {
      print('Cannot listen to script output in a Flatpak sandbox');
      return;
    }

    final process = await Process.start('journalctl', ['-b', '-f']);

    process.stdout
        .transform(utf8.decoder)
        .transform(const LineSplitter())
        .where((line) => line
            .contains('kwin')) // Script output is always prefixed with 'kwin'
        .listen((line) {
      _scriptOutputController.add(line);
    });

    process.stderr
        .transform(utf8.decoder)
        .transform(const LineSplitter())
        .listen((line) {
      // log('Error while listening to script output: $line');
      _scriptOutputController.addError(line);
    });

    process.exitCode.then((exitCode) {
      // log('journalctl exited with code $exitCode');
      _scriptOutputController.addError('journalctl exited with code $exitCode');
    });
  }

  Future<void> dispose() async {
    await _kwinScriptingDBus.dispose();
    await _kwinDBus.dispose();
    await _scriptOutputController.close();
  }
}

/// Returns `true` if the app is running in a Flatpak sandbox.
bool runningInFlatpak() {
  return Platform.environment.containsKey('FLATPAK_ID');
}
