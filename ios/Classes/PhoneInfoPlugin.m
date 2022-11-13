#import "PhoneInfoPlugin.h"
#if __has_include(<phone_info/phone_info-Swift.h>)
#import <phone_info/phone_info-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "phone_info-Swift.h"
#endif

@implementation PhoneInfoPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPhoneInfoPlugin registerWithRegistrar:registrar];
}
@end
