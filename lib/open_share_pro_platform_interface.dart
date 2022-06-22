import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'open_share_pro_method_channel.dart';

abstract class OpenShareProPlatform extends PlatformInterface {
  /// Constructs a OpenShareProPlatform.
  OpenShareProPlatform() : super(token: _token);

  static final Object _token = Object();

  static OpenShareProPlatform _instance = MethodChannelOpenSharePro();

  /// The default instance of [OpenShareProPlatform] to use.
  ///
  /// Defaults to [MethodChannelOpenSharePro].
  static OpenShareProPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [OpenShareProPlatform] when
  /// they register themselves.
  static set instance(OpenShareProPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
