import 'package:flutter_test/flutter_test.dart';
import 'package:open_share_pro/open_share_pro.dart';
import 'package:open_share_pro/open_share_pro_platform_interface.dart';
import 'package:open_share_pro/open_share_pro_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockOpenShareProPlatform
    with MockPlatformInterfaceMixin
    implements OpenShareProPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final OpenShareProPlatform initialPlatform = OpenShareProPlatform.instance;

  test('$MethodChannelOpenSharePro is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelOpenSharePro>());
  });

  test('getPlatformVersion', () async {
    OpenSharePro openShareProPlugin = OpenSharePro();
    MockOpenShareProPlatform fakePlatform = MockOpenShareProPlatform();
    OpenShareProPlatform.instance = fakePlatform;

    expect(await openShareProPlugin.getPlatformVersion(), '42');
  });
}
