import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:open_share_pro/open_share_pro_method_channel.dart';

void main() {
  MethodChannelOpenSharePro platform = MethodChannelOpenSharePro();
  const MethodChannel channel = MethodChannel('open_share_pro');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
