#import "OnesMapPlugin.h"
#if __has_include(<ones_map/ones_map-Swift.h>)
#import <ones_map/ones_map-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "ones_map-Swift.h"
#endif

@implementation OnesMapPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftOnesMapPlugin registerWithRegistrar:registrar];
}
@end
