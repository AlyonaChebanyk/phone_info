// import 'package:plugin_platform_interface/plugin_platform_interface.dart';
//
// import 'phone_info_method_channel.dart';
//
// abstract class PhoneInformation extends PlatformInterface {
//   /// Constructs a PhoneInfoPlatform.
//   PhoneInformation() : super(token: _token);
//
//   static final Object _token = Object();
//
//   static PhoneInformation _instance = MethodChannelPhoneInfo();
//
//   /// The default instance of [PhoneInformation] to use.
//   ///
//   /// Defaults to [MethodChannelPhoneInfo].
//   static PhoneInformation get instance => _instance;
//
//   /// Platform-specific implementations should set this with their own
//   /// platform-specific class that extends [PhoneInformation] when
//   /// they register themselves.
//   static set instance(PhoneInformation instance) {
//     PlatformInterface.verifyToken(instance, _token);
//     _instance = instance;
//   }
//
//   Future<String?> getPhoneInformation() {
//     throw UnimplementedError('platformInformation() has not been implemented.');
//   }
// }
