#import "OpenShareProPlugin.h"
#if __has_include(<open_share_pro/open_share_pro-Swift.h>)
#import <open_share_pro/open_share_pro-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "open_share_pro-Swift.h"
#endif

@implementation OpenShareProPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftOpenShareProPlugin registerWithRegistrar:registrar];
}
@end
