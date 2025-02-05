// This file was generated using the following command and may be overwritten.
// dart-dbus generate-remote-object lib/native_platform/src/linux/org.kde.KWin.xml

import 'package:dbus/dbus.dart';

/// Signal data for org.kde.KWin.reloadConfig.
class OrgKdeKWinreloadConfig extends DBusSignal {
  OrgKdeKWinreloadConfig(DBusSignal signal)
      : super(
            sender: signal.sender,
            path: signal.path,
            interface: signal.interface,
            name: signal.name,
            values: signal.values);
}

/// Signal data for org.kde.KWin.showingDesktopChanged.
class OrgKdeKWinshowingDesktopChanged extends DBusSignal {
  bool get showing => values[0].asBoolean();

  OrgKdeKWinshowingDesktopChanged(DBusSignal signal)
      : super(
            sender: signal.sender,
            path: signal.path,
            interface: signal.interface,
            name: signal.name,
            values: signal.values);
}

class KWinDBus extends DBusRemoteObject {
  /// Stream of org.kde.KWin.reloadConfig signals.
  late final Stream<OrgKdeKWinreloadConfig> reloadConfig;

  /// Stream of org.kde.KWin.showingDesktopChanged signals.
  late final Stream<OrgKdeKWinshowingDesktopChanged> showingDesktopChanged;

  final DBusClient _client;

  // OrgKdeKWin(super.client, String destination, DBusObjectPath path)
  KWinDBus(this._client)
      // : super(name: destination, path: path) {
      : super(_client, name: 'org.kde.KWin', path: DBusObjectPath('/KWin')) {
    reloadConfig = DBusRemoteObjectSignalStream(
            object: this,
            interface: 'org.kde.KWin',
            name: 'reloadConfig',
            signature: DBusSignature(''))
        .asBroadcastStream()
        .map((signal) => OrgKdeKWinreloadConfig(signal));

    showingDesktopChanged = DBusRemoteObjectSignalStream(
            object: this,
            interface: 'org.kde.KWin',
            name: 'showingDesktopChanged',
            signature: DBusSignature('b'))
        .asBroadcastStream()
        .map((signal) => OrgKdeKWinshowingDesktopChanged(signal));
  }

  Future<void> dispose() async {
    await _client.close();
  }

  /// Gets org.kde.KWin.showingDesktop
  Future<bool> getshowingDesktop() async {
    final value =
        await getProperty('org.kde.KWin', 'showingDesktop', signature: DBusSignature('b'));
    return value.asBoolean();
  }

  /// Invokes org.kde.KWin.cascadeDesktop()
  Future<void> callcascadeDesktop(
      {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod('org.kde.KWin', 'cascadeDesktop', [],
        replySignature: DBusSignature(''),
        noReplyExpected: true,
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes org.kde.KWin.unclutterDesktop()
  Future<void> callunclutterDesktop(
      {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod('org.kde.KWin', 'unclutterDesktop', [],
        replySignature: DBusSignature(''),
        noReplyExpected: true,
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes org.kde.KWin.reconfigure()
  Future<void> callreconfigure(
      {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod('org.kde.KWin', 'reconfigure', [],
        replySignature: DBusSignature(''),
        noReplyExpected: true,
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes org.kde.KWin.killWindow()
  Future<void> callkillWindow(
      {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod('org.kde.KWin', 'killWindow', [],
        replySignature: DBusSignature(''),
        noReplyExpected: true,
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes org.kde.KWin.setCurrentDesktop()
  Future<bool> callsetCurrentDesktop(int desktop,
      {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    final result = await callMethod('org.kde.KWin', 'setCurrentDesktop', [DBusInt32(desktop)],
        replySignature: DBusSignature('b'),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
    return result.returnValues[0].asBoolean();
  }

  /// Invokes org.kde.KWin.currentDesktop()
  Future<int> callcurrentDesktop(
      {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    final result = await callMethod('org.kde.KWin', 'currentDesktop', [],
        replySignature: DBusSignature('i'),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
    return result.returnValues[0].asInt32();
  }

  /// Invokes org.kde.KWin.nextDesktop()
  Future<void> callnextDesktop(
      {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod('org.kde.KWin', 'nextDesktop', [],
        replySignature: DBusSignature(''),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes org.kde.KWin.previousDesktop()
  Future<void> callpreviousDesktop(
      {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod('org.kde.KWin', 'previousDesktop', [],
        replySignature: DBusSignature(''),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes org.kde.KWin.stopActivity()
  Future<bool> callstopActivity(String arg_0,
      {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    final result = await callMethod('org.kde.KWin', 'stopActivity', [DBusString(arg_0)],
        replySignature: DBusSignature('b'),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
    return result.returnValues[0].asBoolean();
  }

  /// Invokes org.kde.KWin.startActivity()
  Future<bool> callstartActivity(String arg_0,
      {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    final result = await callMethod('org.kde.KWin', 'startActivity', [DBusString(arg_0)],
        replySignature: DBusSignature('b'),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
    return result.returnValues[0].asBoolean();
  }

  /// Invokes org.kde.KWin.supportInformation()
  Future<String> callsupportInformation(
      {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    final result = await callMethod('org.kde.KWin', 'supportInformation', [],
        replySignature: DBusSignature('s'),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
    return result.returnValues[0].asString();
  }

  /// Invokes org.kde.KWin.activeOutputName()
  Future<String> callactiveOutputName(
      {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    final result = await callMethod('org.kde.KWin', 'activeOutputName', [],
        replySignature: DBusSignature('s'),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
    return result.returnValues[0].asString();
  }

  /// Invokes org.kde.KWin.showDebugConsole()
  Future<void> callshowDebugConsole(
      {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod('org.kde.KWin', 'showDebugConsole', [],
        replySignature: DBusSignature(''),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes org.kde.KWin.replace()
  Future<void> callreplace(
      {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod('org.kde.KWin', 'replace', [],
        replySignature: DBusSignature(''),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes org.kde.KWin.queryWindowInfo()
  Future<Map<String, DBusValue>> callqueryWindowInfo(
      {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    final result = await callMethod('org.kde.KWin', 'queryWindowInfo', [],
        replySignature: DBusSignature('a{sv}'),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
    return result.returnValues[0].asStringVariantDict();
  }

  /// Invokes org.kde.KWin.getWindowInfo()
  Future<Map<String, DBusValue>> callgetWindowInfo(String arg_0,
      {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    final result = await callMethod('org.kde.KWin', 'getWindowInfo', [DBusString(arg_0)],
        replySignature: DBusSignature('a{sv}'),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
    return result.returnValues[0].asStringVariantDict();
  }

  /// Invokes org.kde.KWin.showDesktop()
  Future<void> callshowDesktop(bool showing,
      {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod('org.kde.KWin', 'showDesktop', [DBusBoolean(showing)],
        replySignature: DBusSignature(''),
        noReplyExpected: true,
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
  }
}
