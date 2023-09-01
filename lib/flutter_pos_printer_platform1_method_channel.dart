import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_pos_printer_platform1_platform_interface.dart';

/// An implementation of [FlutterPosPrinterPlatform1Platform] that uses method channels.
class MethodChannelFlutterPosPrinterPlatform1 extends FlutterPosPrinterPlatform1Platform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_pos_printer_platform1');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
