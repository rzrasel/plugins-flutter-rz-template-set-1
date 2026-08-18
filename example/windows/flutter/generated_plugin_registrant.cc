//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <responsive_builder_kit/responsive_builder_kit_plugin_c_api.h>
#include <rz_library_utilities/rz_library_utilities_plugin_c_api.h>
#include <rz_template_set_1/rz_template_set_1_plugin_c_api.h>
#include <rz_theme_set_1/rz_theme_set_1_plugin_c_api.h>
#include <rz_widget_set_basic/rz_widget_set_basic_plugin_c_api.h>

void RegisterPlugins(flutter::PluginRegistry* registry) {
  ResponsiveBuilderKitPluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("ResponsiveBuilderKitPluginCApi"));
  RzLibraryUtilitiesPluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("RzLibraryUtilitiesPluginCApi"));
  RzTemplateSet_1PluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("RzTemplateSet_1PluginCApi"));
  RzThemeSet_1PluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("RzThemeSet_1PluginCApi"));
  RzWidgetSetBasicPluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("RzWidgetSetBasicPluginCApi"));
}
