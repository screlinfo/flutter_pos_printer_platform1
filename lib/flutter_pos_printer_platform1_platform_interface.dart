import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_pos_printer_platform1_method_channel.dart';

abstract class FlutterPosPrinterPlatform1Platform extends PlatformInterface {
  /// Constructs a FlutterPosPrinterPlatform1Platform.
  FlutterPosPrinterPlatform1Platform() : super(token: _token);

  static final Object _token = Object();

  static FlutterPosPrinterPlatform1Platform _instance = MethodChannelFlutterPosPrinterPlatform1();

  /// The default instance of [FlutterPosPrinterPlatform1Platform] to use.
  ///
  /// Defaults to [MethodChannelFlutterPosPrinterPlatform1].
  static FlutterPosPrinterPlatform1Platform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterPosPrinterPlatform1Platform] when
  /// they register themselves.
  static set instance(FlutterPosPrinterPlatform1Platform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
