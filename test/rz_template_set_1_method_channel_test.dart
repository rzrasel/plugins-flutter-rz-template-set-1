import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rz_template_set_1/rz_template_set_1_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelRzTemplateSet_1 platform = MethodChannelRzTemplateSet_1();
  const MethodChannel channel = MethodChannel('rz_template_set_1');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
