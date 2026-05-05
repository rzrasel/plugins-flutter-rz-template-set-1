// In order to *not* need this ignore, consider extracting the "web" version
// of your plugin as a separate package, instead of inlining it in the same
// package as the core of your plugin.
// ignore: avoid_web_libraries_in_flutter

import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:web/web.dart' as web;

import 'rz_template_set_1_platform_interface.dart';

/// A web implementation of the RzTemplateSet_1Platform of the RzTemplateSet_1 plugin.
class RzTemplateSet_1Web extends RzTemplateSet_1Platform {
  /// Constructs a RzTemplateSet_1Web
  RzTemplateSet_1Web();

  static void registerWith(Registrar registrar) {
    RzTemplateSet_1Platform.instance = RzTemplateSet_1Web();
  }

  /// Returns a [String] containing the version of the platform.
  @override
  Future<String?> getPlatformVersion() async {
    final version = web.window.navigator.userAgent;
    return version;
  }
}
