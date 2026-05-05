import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'rz_template_set_1_method_channel.dart';

abstract class RzTemplateSet_1Platform extends PlatformInterface {
  /// Constructs a RzTemplateSet_1Platform.
  RzTemplateSet_1Platform() : super(token: _token);

  static final Object _token = Object();

  static RzTemplateSet_1Platform _instance = MethodChannelRzTemplateSet_1();

  /// The default instance of [RzTemplateSet_1Platform] to use.
  ///
  /// Defaults to [MethodChannelRzTemplateSet_1].
  static RzTemplateSet_1Platform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [RzTemplateSet_1Platform] when
  /// they register themselves.
  static set instance(RzTemplateSet_1Platform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
