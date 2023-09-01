#ifndef FLUTTER_PLUGIN_FLUTTER_POS_PRINTER_PLATFORM1_PLUGIN_H_
#define FLUTTER_PLUGIN_FLUTTER_POS_PRINTER_PLATFORM1_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace flutter_pos_printer_platform1 {

class FlutterPosPrinterPlatform1Plugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  FlutterPosPrinterPlatform1Plugin();

  virtual ~FlutterPosPrinterPlatform1Plugin();

  // Disallow copy and assign.
  FlutterPosPrinterPlatform1Plugin(const FlutterPosPrinterPlatform1Plugin&) = delete;
  FlutterPosPrinterPlatform1Plugin& operator=(const FlutterPosPrinterPlatform1Plugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace flutter_pos_printer_platform1

#endif  // FLUTTER_PLUGIN_FLUTTER_POS_PRINTER_PLATFORM1_PLUGIN_H_
