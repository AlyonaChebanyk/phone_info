import 'package:device_information/device_information.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:phone_info/phone_info.dart';

import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';
  String _imeiNo = 'Unknown';
  String _modelName = 'Unknown';
  String _manufacturer = 'Unknown';
  dynamic _apiLevel = 'Unknown';
  String _deviceName = 'Unknown';
  String _productName = 'Unknown';
  String _cpuType = 'Unknown';
  String _hardware = 'Unknown';
  int _height = 0;
  int _width = 0;

  final _phoneInfoPlugin = PhoneInfo();

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    // await Permission.phone.request();

    String platformVersion;
    String imeiNo;
    String modelName;
    String manufacturer;
    dynamic apiLevel;
    String deviceName;
    String productName;
    String cpuType;
    String hardware;
    int height;
    int width;

    // Platform messages may fail, so we use a try/catch PlatformException.
    // We also handle the message potentially returning null.
    // try {
    //   platformVersion =
    //       await _phoneInfoPlugin.getPlatformVersion() ?? 'Unknown platform version';
    // } on PlatformException {
    //   platformVersion = 'Failed to get platform version.';
    // }

    platformVersion =
        await _phoneInfoPlugin.getPlatformVersion() ?? 'Undefined';
    imeiNo = await _phoneInfoPlugin.getImeiNumber() ?? 'Undefined';
    modelName = await _phoneInfoPlugin.getDeviceModel() ?? 'Undefined';
    manufacturer =
        await _phoneInfoPlugin.getDeviceManufacturer() ?? 'Undefined';
    apiLevel = await _phoneInfoPlugin.getApiLevel() ?? 'Undefined';
    deviceName = await _phoneInfoPlugin.getDeviceName() ?? 'Undefined';
    productName = await _phoneInfoPlugin.getDeviceName() ?? 'Undefined';
    cpuType = await _phoneInfoPlugin.getCpuName() ?? 'Undefined';
    hardware = await _phoneInfoPlugin.getHardware() ?? 'Undefined';
    height = _phoneInfoPlugin.getDeviceHeight();
    width = _phoneInfoPlugin.getDeviceWidth();

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
      _imeiNo = imeiNo;
      _modelName = modelName;
      _manufacturer = manufacturer;
      _apiLevel = apiLevel;
      _deviceName = deviceName;
      _productName = productName;
      _cpuType = cpuType;
      _hardware = hardware;
      _height = height;
      _width = width;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Phone info'),
          ),
          body: Padding(
            padding: EdgeInsets.only(top: 30, left: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('Platform version: $_platformVersion',
                      style: TextStyle(fontSize: 20))),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('Size: $_height x $_width',
                      style: TextStyle(fontSize: 20))),
              Padding(
                  padding: EdgeInsets.all(5),
                  child:
                      Text('IMEI: $_imeiNo', style: TextStyle(fontSize: 20))),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('Model name: $_modelName',
                      style: TextStyle(fontSize: 20))),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('Manufacturer: $_manufacturer',
                      style: TextStyle(fontSize: 20))),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('API level: $_apiLevel',
                      style: TextStyle(fontSize: 20))),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('Device name: $_deviceName',
                      style: TextStyle(fontSize: 20))),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('Product name: $_productName',
                      style: TextStyle(fontSize: 20))),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('CPU type: $_cpuType',
                      style: TextStyle(fontSize: 20))),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('Hardware: $_hardware',
                      style: TextStyle(fontSize: 20))),
            ]),
          )),
    );
  }
}
