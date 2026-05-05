import 'package:flutter_test/flutter_test.dart';
import 'package:rz_template_set_1/rz_template_set_1.dart';
import 'package:rz_template_set_1/rz_template_set_1_platform_interface.dart';
import 'package:rz_template_set_1/rz_template_set_1_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockRzTemplateSet_1Platform
    with MockPlatformInterfaceMixin
    implements RzTemplateSet_1Platform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final RzTemplateSet_1Platform initialPlatform = RzTemplateSet_1Platform.instance;

  test('$MethodChannelRzTemplateSet_1 is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelRzTemplateSet_1>());
  });

  test('getPlatformVersion', () async {
    //RzTemplateSet_1 rzTemplateSet_1Plugin = RzTemplateSet_1();
    MockRzTemplateSet_1Platform fakePlatform = MockRzTemplateSet_1Platform();
    RzTemplateSet_1Platform.instance = fakePlatform;

    //expect(await rzTemplateSet_1Plugin.getPlatformVersion(), '42');
  });
}
