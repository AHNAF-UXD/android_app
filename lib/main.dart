// import 'package:flutter/material.dart';
// import 'dart:async';

// import 'package:flutter/services.dart';
// import 'package:device_information/device_information.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   String _platformVersion = 'Unknown',
//       _imeiNo = "",
//       _modelName = "",
//       _manufacturerName = "",
//       _deviceName = "",
//       _productName = "",
//       _cpuType = "",
//       _hardware = "";
//   var _apiLevel;

//   @override
//   void initState() {
//     super.initState();
//     initPlatformState();
//   }

//   // Platform messages are asynchronous, so we initialize in an async method.
//   Future<void> initPlatformState() async {
//     late String platformVersion,
//         imeiNo = '',
//         modelName = '',
//         manufacturer = '',
//         deviceName = '',
//         productName = '',
//         cpuType = '',
//         hardware = '';
//     var apiLevel;
//     // Platform messages may fail,
//     // so we use a try/catch PlatformException.
//     try {
//       platformVersion = await DeviceInformation.platformVersion;
//       imeiNo = await DeviceInformation.deviceIMEINumber;
//       modelName = await DeviceInformation.deviceModel;
//       manufacturer = await DeviceInformation.deviceManufacturer;
//       apiLevel = await DeviceInformation.apiLevel;
//       deviceName = await DeviceInformation.deviceName;
//       productName = await DeviceInformation.productName;
//       cpuType = await DeviceInformation.cpuName;
//       hardware = await DeviceInformation.hardware;
//     } on PlatformException catch (e) {
//       platformVersion = '${e.message}';
//     }

//     // If the widget was removed from the tree while the asynchronous platform
//     // message was in flight, we want to discard the reply rather than calling
//     // setState to update our non-existent appearance.
//     if (!mounted) return;

//     setState(() {
//       _platformVersion = "Running on :$platformVersion";
//       _imeiNo = imeiNo;
//       _modelName = modelName;
//       _manufacturerName = manufacturer;
//       _apiLevel = apiLevel;
//       _deviceName = deviceName;
//       _productName = productName;
//       _cpuType = cpuType;
//       _hardware = hardware;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Device Information Plugin Example app'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               const SizedBox(
//                 height: 40,
//               ),
//               Text('$_platformVersion\n'),
//               const SizedBox(
//                 height: 10,
//               ),
//               Text('IMEI Number: $_imeiNo\n'),
//               const SizedBox(
//                 height: 10,
//               ),
//               Text('Device Model: $_modelName\n'),
//               const SizedBox(
//                 height: 10,
//               ),
//               Text('API Level: $_apiLevel\n'),
//               const SizedBox(
//                 height: 10,
//               ),
//               Text('Manufacture Name: $_manufacturerName\n'),
//               const SizedBox(
//                 height: 10,
//               ),
//               Text('Device Name: $_deviceName\n'),
//               const SizedBox(
//                 height: 10,
//               ),
//               Text('Product Name: $_productName\n'),
//               const SizedBox(
//                 height: 10,
//               ),
//               Text('CPU Type: $_cpuType\n'),
//               const SizedBox(
//                 height: 10,
//               ),
//               Text('Hardware Name: $_hardware\n'),
//               const SizedBox(
//                 height: 10,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';
//import 'package:device_info/device_info.dart';
import 'package:system_info/system_info.dart';
import 'package:device_info_plus/device_info_plus.dart';
//import 'package:disk_space/disk_space.dart';
//import 'package:storage_details/storage_details.dart';
import 'package:device_information/device_information.dart';
//import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String board = '';
  String bootloader = '';
  String brand = '';
  String device = '';
  String display = '';
  String fingerprint = '';
  String hardware = '';
  String host = '';
  String id = '';
  String manufacturer = '';
  String model = '';
  String version = '';
  String securityPatch = '';
  String versionCodeName = '';
  String versionBaseOS = '';
  String displayHightPx = '';
  String displayWidthPx = '';
  String displayHightIn = '';
  String displayWidthIn = '';
  String displayDpi = '';
  String diskSpace = '';

  String ramSizeDevice = '';
  String ramSizeActual = '';
  String freeRam = '';
  String storageBrand = '';
  String storageModel = '';
  String batteryCapacity = '';
  String batteryType = '';

  @override
  void initState() {
    super.initState();
    getDeviceInfo();
  }

  Future<void> getDeviceInfo() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    //final datali = await StorageDetails.getspace;
    //int totalStorage = await StorageInfo.getTotalStorage(appDocDir.path);

    late String platformVersion,
        imeiNo = '',
        modelName = '',
        manufacturer = '',
        deviceName = '',
        productName = '',
        cpuType = '',
        hardware = '';
    var apiLevel;
    // Platform messages may fail,
    // so we use a try/catch PlatformException.
    try {
      //platformVersion = await DeviceInformation.platformVersion;
      imeiNo = await DeviceInformation.deviceIMEINumber;
      modelName = await DeviceInformation.deviceModel;
      manufacturer = await DeviceInformation.deviceManufacturer;
      apiLevel = await DeviceInformation.apiLevel;
      deviceName = await DeviceInformation.deviceName;
      productName = await DeviceInformation.productName;
      cpuType = await DeviceInformation.cpuName;
      hardware = await DeviceInformation.hardware;
    } catch (e) {
      imeiNo = '${e}';
    }
    // var imeiNo = await DeviceInformation.deviceIMEINumber;
    // var modelName = await DeviceInformation.deviceModel;
    // var manufacturer = await DeviceInformation.deviceManufacturer;
    // var apiLevel = await DeviceInformation.apiLevel;
    // var deviceName = await DeviceInformation.deviceName;
    // var productName = await DeviceInformation.productName;
    // var cpuType = await DeviceInformation.cpuName;
    // var hardware = await DeviceInformation.hardware;

    //DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    //AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    //print('Running on ${androidInfo.model}');  // e.g. "Moto G (4)"

    setState(() {
      board = androidInfo.board;
      bootloader = androidInfo.bootloader;
      brand = androidInfo.brand;
      device = androidInfo.device;
      display = androidInfo.display;
      displayHightPx = '${(androidInfo.displayMetrics.heightPx).round()}';
      displayWidthPx = '${(androidInfo.displayMetrics.widthPx).round()}';
      displayHightIn =
          '${(androidInfo.displayMetrics.heightInches).toStringAsFixed(2)}';
      displayWidthIn =
          '${(androidInfo.displayMetrics.widthInches).toStringAsFixed(2)}';
      displayDpi = '${androidInfo.displayMetrics.xDpi.round()}';
      // display = androidInfo.display;

      diskSpace = '${imeiNo}';
      // display = androidInfo.display;
      // display = androidInfo.display;
      fingerprint = androidInfo.fingerprint;
      hardware = androidInfo.hardware;
      host = androidInfo.host;
      id = androidInfo.id;
      manufacturer = androidInfo.manufacturer;
      model = androidInfo.model;
      version = androidInfo.version.release;
      securityPatch = '${androidInfo.version.securityPatch}';
      versionCodeName = androidInfo.version.codename;
      versionBaseOS = androidInfo.version.baseOS!;

      //ramSize = '${(androidInfo.totalPhysicalMemory / (1024 * 1024 * 1024)).round()} GB';
      ramSizeDevice =
          '${(SysInfo.getTotalPhysicalMemory() / 1024 / 1024 / 1024).round()}GB';
      ramSizeActual =
          '${(SysInfo.getTotalPhysicalMemory() / 1024 / 1024 / 1024).toStringAsFixed(2)}GB';
      //ramBrand = androidInfo.manufacturer;
      freeRam =
          '${(SysInfo.getFreePhysicalMemory() / 1024 / 1024 / 1024).toStringAsFixed(2)}GB';
      //ramSpeed = ''; // RAM speed information is not available in the device_info plugin.
      //ramModel = ''; // RAM model information is not available in the device_info plugin.
      //storageSize = '${(androidInfo.totalSpace / (1024 * 1024 * 1024)).round()} GB';
      //freeStorage = '${(androidInfo.freeSpace / (1024 * 1024 * 1024)).round()} GB';
      //storageBrand = ''; // Storage brand information is not available in the device_info plugin.
      //storageModel = ''; // Storage model information is not available in the device_info plugin.
      //batteryCapacity = '${androidInfo.batteryCapacity} mAh';
      //batteryType = androidInfo.batteryType;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('System Information'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Base Board: $board'),
            Text('BootLoader: $bootloader'),
            Text('Brand: $brand'),
            Text('Device: $device'),
            Text('Device Total RAM: $ramSizeDevice'),
            Text('Actual Total RAM: $ramSizeActual'),
            Text('Available RAM: $freeRam'),
            Text('Ekhane Check: $diskSpace'),
            Text('Display: $display'),
            Text('Display Hight in Pixel: $displayHightPx'),
            Text('Display Width in Pixel: $displayWidthPx'),
            Text('Display Hight in Inch: $displayHightIn'),
            Text('Display Width in Inch: $displayWidthIn'),
            Text('Display DPI: $displayDpi'),
            Text('Finger Print: $fingerprint'),
            Text('Hardware: $hardware'),
            Text('Host: $host'),
            Text('ID: $id'),
            Text('Manufacturer: $manufacturer'),
            Text('Model: $model'),
            Text('Android Version: $version'),
            Text('Security Patch: $securityPatch'),
            Text('Version Code Name: $versionCodeName'),
            Text('Version Base OS: $versionBaseOS'),
            Text('Storage Brand: $storageBrand'),
            Text('Storage Model: $storageModel'),
            Text('Battery Capacity: $batteryCapacity'),
            Text('Battery Type: $batteryType'),
            SizedBox(height: 20),
            Text('Additional System Information:'),
            Text('Kernel architecture     : ${SysInfo.kernelArchitecture}'),
            Text('Kernel bitness          : ${SysInfo.kernelBitness}'),
            Text('Kernel name             : ${SysInfo.kernelName}'),
            Text('Kernel version          : ${SysInfo.kernelVersion}'),
            Text('Operating system name   : ${SysInfo.operatingSystemName}'),
            Text('Operating system version: ${SysInfo.operatingSystemVersion}'),
            Text('User directory          : ${SysInfo.userDirectory}'),
            Text('User id                 : ${SysInfo.userId}'),
            Text('User name               : ${SysInfo.userName}'),
            Text('User space bitness      : ${SysInfo.userSpaceBitness}'),
            SizedBox(height: 20),
            Text('Processor Information:'),
            for (var processor in SysInfo.processors)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('  Architecture          : ${processor.architecture}'),
                  Text('  Name                  : ${processor.name}'),
                  Text('  Socket                : ${processor.socket}'),
                  Text('  Vendor                : ${processor.vendor}'),
                  SizedBox(height: 10),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
