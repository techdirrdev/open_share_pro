import 'open_share_pro_platform_interface.dart';

class OpenSharePro {
  Future<String?> getPlatformVersion() {
    return OpenShareProPlatform.instance.getPlatformVersion();
  }
}
