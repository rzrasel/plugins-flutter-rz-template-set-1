import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'rz_template_set_1_platform_interface.dart';

/// An implementation of [RzTemplateSet_1Platform] that uses method channels.
class MethodChannelRzTemplateSet_1 extends RzTemplateSet_1Platform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('rz_template_set_1');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
