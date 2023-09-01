#include "include/flutter_pos_printer_platform1/flutter_pos_printer_platform1_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "flutter_pos_printer_platform1_plugin.h"

void FlutterPosPrinterPlatform1PluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  flutter_pos_printer_platform1::FlutterPosPrinterPlatform1Plugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
