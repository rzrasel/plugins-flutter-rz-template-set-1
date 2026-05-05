//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <responsive_builder_kit/responsive_builder_kit_plugin.h>
#include <rz_advance_widget/rz_advance_widget_plugin.h>
#include <rz_template_set_1/rz_template_set_1_plugin.h>
#include <rz_theme_set_1/rz_theme_set_1_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) responsive_builder_kit_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "ResponsiveBuilderKitPlugin");
  responsive_builder_kit_plugin_register_with_registrar(responsive_builder_kit_registrar);
  g_autoptr(FlPluginRegistrar) rz_advance_widget_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "RzAdvanceWidgetPlugin");
  rz_advance_widget_plugin_register_with_registrar(rz_advance_widget_registrar);
  g_autoptr(FlPluginRegistrar) rz_template_set_1_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "RzTemplateSet_1Plugin");
  rz_template_set_1_plugin_register_with_registrar(rz_template_set_1_registrar);
  g_autoptr(FlPluginRegistrar) rz_theme_set_1_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "RzThemeSet_1Plugin");
  rz_theme_set_1_plugin_register_with_registrar(rz_theme_set_1_registrar);
}
