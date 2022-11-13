// import 'package:flutter/services.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:phone_info/phone_info_method_channel.dart';
//
// void main() {
//   MethodChannelPhoneInfo platform = MethodChannelPhoneInfo();
//   const MethodChannel channel = MethodChannel('phone_info');
//
//   TestWidgetsFlutterBinding.ensureInitialized();
//
//   setUp(() {
//     channel.setMockMethodCallHandler((MethodCall methodCall) async {
//       return '42';
//     });
//   });
//
//   tearDown(() {
//     channel.setMockMethodCallHandler(null);
//   });
//
//   test('getPlatformVersion', () async {
//     expect(await platform.getPhoneInformation(), '42');
//   });
// }
