import 'package:flutter/cupertino.dart';

import 'phone_info_platform_interface.dart';
import 'package:device_information/device_information.dart';
import 'dart:ui';

class PhoneInfo {
  Future<String?> getPlatformVersion() async {
    try {
      return await DeviceInformation.platformVersion;
    } catch (e) {
      return null;
    }
    // return PhoneInformation.instance.getPhoneInformation();
  }

  Future<String?> getImeiNumber() async {
    try {
      return await DeviceInformation.deviceIMEINumber;
    } catch (e) {
      return null;
    }
  }

  Future<String?> getDeviceModel() async {
    try {
      return await DeviceInformation.deviceModel;
    } catch (e) {
      return null;
    }
  }

  Future<String?> getDeviceManufacturer() async {
    try {
      return await DeviceInformation.deviceManufacturer;
    } catch (e) {
      return null;
    }
  }

  Future<dynamic> getApiLevel() async {
    try {
      return await DeviceInformation.apiLevel;
    } catch (e) {
      return null;
    }
  }

  Future<String?> getDeviceName() async {
    try {
      return await DeviceInformation.deviceName;
    } catch (e) {
      return null;
    }
  }

  Future<String?> getCpuName() async {
    try {
      return await DeviceInformation.cpuName;
    } catch (e) {
      return null;
    }
  }

  Future<String?> getHardware() async {
    try {
      return await DeviceInformation.hardware;
    } catch (e) {
      return null;
    }
  }

  int getDeviceHeight() {
    return window.physicalSize.height.round();
  }

  int getDeviceWidth() {
    return window.physicalSize.width.round();
  }
}
