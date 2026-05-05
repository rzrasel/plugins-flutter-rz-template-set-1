#include "include/rz_template_set_1/rz_template_set_1_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "rz_template_set_1_plugin.h"

void RzTemplateSet_1PluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  rz_template_set_1::RzTemplateSet_1Plugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
