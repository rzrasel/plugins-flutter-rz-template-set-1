#ifndef FLUTTER_PLUGIN_RZ_TEMPLATE_SET_1_PLUGIN_H_
#define FLUTTER_PLUGIN_RZ_TEMPLATE_SET_1_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace rz_template_set_1 {

class RzTemplateSet_1Plugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  RzTemplateSet_1Plugin();

  virtual ~RzTemplateSet_1Plugin();

  // Disallow copy and assign.
  RzTemplateSet_1Plugin(const RzTemplateSet_1Plugin&) = delete;
  RzTemplateSet_1Plugin& operator=(const RzTemplateSet_1Plugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace rz_template_set_1

#endif  // FLUTTER_PLUGIN_RZ_TEMPLATE_SET_1_PLUGIN_H_
