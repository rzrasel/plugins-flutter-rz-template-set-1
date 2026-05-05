#ifndef FLUTTER_PLUGIN_RZ_TEMPLATE_SET_1_PLUGIN_H_
#define FLUTTER_PLUGIN_RZ_TEMPLATE_SET_1_PLUGIN_H_

#include <flutter_linux/flutter_linux.h>

G_BEGIN_DECLS

#ifdef FLUTTER_PLUGIN_IMPL
#define FLUTTER_PLUGIN_EXPORT __attribute__((visibility("default")))
#else
#define FLUTTER_PLUGIN_EXPORT
#endif

typedef struct _RzTemplateSet_1Plugin RzTemplateSet_1Plugin;
typedef struct {
  GObjectClass parent_class;
} RzTemplateSet_1PluginClass;

FLUTTER_PLUGIN_EXPORT GType rz_template_set_1_plugin_get_type();

FLUTTER_PLUGIN_EXPORT void rz_template_set_1_plugin_register_with_registrar(
    FlPluginRegistrar* registrar);

G_END_DECLS

#endif  // FLUTTER_PLUGIN_RZ_TEMPLATE_SET_1_PLUGIN_H_
