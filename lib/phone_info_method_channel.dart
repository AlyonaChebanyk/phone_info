// import 'package:flutter/foundation.dart';
// import 'package:flutter/services.dart';
//
// import 'phone_info_platform_interface.dart';
//
// /// An implementation of [PhoneInformation] that uses method channels.
// class MethodChannelPhoneInfo extends PhoneInformation {
//   /// The method channel used to interact with the native platform.
//   @visibleForTesting
//   final methodChannel = const MethodChannel('phone_info');
//
//   @override
//   Future<String?> getPhoneInformation() async {
//     final version = await methodChannel.invokeMethod<String>('getPhoneInformation');
//     return version;
//   }
// }
