import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_pos_printer_platform1/flutter_pos_printer_platform1.dart';
import 'package:flutter_pos_printer_platform1/flutter_pos_printer_platform1_platform_interface.dart';
import 'package:flutter_pos_printer_platform1/flutter_pos_printer_platform1_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterPosPrinterPlatform1Platform
    with MockPlatformInterfaceMixin
    implements FlutterPosPrinterPlatform1Platform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterPosPrinterPlatform1Platform initialPlatform = FlutterPosPrinterPlatform1Platform.instance;

  test('$MethodChannelFlutterPosPrinterPlatform1 is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterPosPrinterPlatform1>());
  });

  test('getPlatformVersion', () async {
    FlutterPosPrinterPlatform1 flutterPosPrinterPlatform1Plugin = FlutterPosPrinterPlatform1();
    MockFlutterPosPrinterPlatform1Platform fakePlatform = MockFlutterPosPrinterPlatform1Platform();
    FlutterPosPrinterPlatform1Platform.instance = fakePlatform;

    expect(await flutterPosPrinterPlatform1Plugin.getPlatformVersion(), '42');
  });
}
