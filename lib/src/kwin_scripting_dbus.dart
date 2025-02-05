// This file was generated using the following command and may be overwritten.
// dart-dbus generate-remote-object lib/native_platform/src/linux/org.kde.KWin.Scripting.xml

import 'package:dbus/dbus.dart';

class KwinScriptingDBus extends DBusRemoteObject {
  final DBusClient _client;

  KwinScriptingDBus(this._client)
      : super(
          _client,
          name: 'org.kde.KWin',
          path: DBusObjectPath('/Scripting'),
        );

  Future<void> dispose() async {
    await _client.close();
  }

  /// Invokes org.kde.kwin.Scripting.start()
  Future<void> callstart(
      {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod('org.kde.kwin.Scripting', 'start', [],
        replySignature: DBusSignature(''),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes org.kde.kwin.Scripting.loadScript()
  Future<int> callloadScript(String filePath, String pluginName,
      {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    final result = await callMethod(
        'org.kde.kwin.Scripting', 'loadScript', [DBusString(filePath), DBusString(pluginName)],
        replySignature: DBusSignature('i'),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
    return result.returnValues[0].asInt32();
  }

  /// Invokes org.kde.kwin.Scripting.loadScript()
  Future<int> callloadScript_(String filePath,
      {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    final result = await callMethod('org.kde.kwin.Scripting', 'loadScript', [DBusString(filePath)],
        replySignature: DBusSignature('i'),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
    return result.returnValues[0].asInt32();
  }

  /// Invokes org.kde.kwin.Scripting.loadDeclarativeScript()
  Future<int> callloadDeclarativeScript(String filePath, String pluginName,
      {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    final result = await callMethod('org.kde.kwin.Scripting', 'loadDeclarativeScript',
        [DBusString(filePath), DBusString(pluginName)],
        replySignature: DBusSignature('i'),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
    return result.returnValues[0].asInt32();
  }

  /// Invokes org.kde.kwin.Scripting.loadDeclarativeScript()
  Future<int> callloadDeclarativeScript_(String filePath,
      {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    final result = await callMethod(
        'org.kde.kwin.Scripting', 'loadDeclarativeScript', [DBusString(filePath)],
        replySignature: DBusSignature('i'),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
    return result.returnValues[0].asInt32();
  }

  /// Invokes org.kde.kwin.Scripting.isScriptLoaded()
  Future<bool> callisScriptLoaded(String pluginName,
      {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    final result = await callMethod(
        'org.kde.kwin.Scripting', 'isScriptLoaded', [DBusString(pluginName)],
        replySignature: DBusSignature('b'),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
    return result.returnValues[0].asBoolean();
  }

  /// Invokes org.kde.kwin.Scripting.unloadScript()
  Future<bool> callunloadScript(String pluginName,
      {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    final result = await callMethod(
        'org.kde.kwin.Scripting', 'unloadScript', [DBusString(pluginName)],
        replySignature: DBusSignature('b'),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
    return result.returnValues[0].asBoolean();
  }

  /// Invokes org.freedesktop.DBus.Properties.Get()
  Future<DBusValue> callGet(String interfaceName, String propertyName,
      {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    final result = await callMethod('org.freedesktop.DBus.Properties', 'Get',
        [DBusString(interfaceName), DBusString(propertyName)],
        replySignature: DBusSignature('v'),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
    return result.returnValues[0].asVariant();
  }

  /// Invokes org.freedesktop.DBus.Properties.Set()
  Future<void> callSet(String interfaceName, String propertyName, DBusValue value,
      {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod('org.freedesktop.DBus.Properties', 'Set',
        [DBusString(interfaceName), DBusString(propertyName), DBusVariant(value)],
        replySignature: DBusSignature(''),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes org.freedesktop.DBus.Properties.GetAll()
  Future<Map<String, DBusValue>> callGetAll(String interfaceName,
      {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    final result = await callMethod(
        'org.freedesktop.DBus.Properties', 'GetAll', [DBusString(interfaceName)],
        replySignature: DBusSignature('a{sv}'),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
    return result.returnValues[0].asStringVariantDict();
  }

  /// Invokes org.freedesktop.DBus.Introspectable.Introspect()
  Future<String> callIntrospect(
      {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    final result = await callMethod('org.freedesktop.DBus.Introspectable', 'Introspect', [],
        replySignature: DBusSignature('s'),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
    return result.returnValues[0].asString();
  }

  /// Invokes org.freedesktop.DBus.Peer.Ping()
  Future<void> callPing(
      {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod('org.freedesktop.DBus.Peer', 'Ping', [],
        replySignature: DBusSignature(''),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes org.freedesktop.DBus.Peer.GetMachineId()
  Future<String> callGetMachineId(
      {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    final result = await callMethod('org.freedesktop.DBus.Peer', 'GetMachineId', [],
        replySignature: DBusSignature('s'),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
    return result.returnValues[0].asString();
  }
}
