import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'open_share_pro_platform_interface.dart';

/// An implementation of [OpenShareProPlatform] that uses method channels.
class MethodChannelOpenSharePro extends OpenShareProPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('open_share_pro');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
