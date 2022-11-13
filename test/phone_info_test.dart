// import 'package:flutter_test/flutter_test.dart';
// import 'package:phone_info/phone_info.dart';
// import 'package:phone_info/phone_info_platform_interface.dart';
// import 'package:phone_info/phone_info_method_channel.dart';
// import 'package:plugin_platform_interface/plugin_platform_interface.dart';
//
// class MockPhoneInfoPlatform
//     with MockPlatformInterfaceMixin
//     implements PhoneInformation {
//
//   @override
//   Future<String?> getPhoneInformation() => Future.value('42');
// }
//
// void main() {
//   final PhoneInformation initialPlatform = PhoneInformation.instance;
//
//   test('$MethodChannelPhoneInfo is the default instance', () {
//     expect(initialPlatform, isInstanceOf<MethodChannelPhoneInfo>());
//   });
//
//   test('getPlatformVersion', () async {
//     PhoneInfo phoneInfoPlugin = PhoneInfo();
//     MockPhoneInfoPlatform fakePlatform = MockPhoneInfoPlatform();
//     PhoneInformation.instance = fakePlatform;
//
//     expect(await phoneInfoPlugin.getPlatformVersion(), '42');
//   });
// }
