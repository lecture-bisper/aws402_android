//  File :  geo_screen.dart
//  User :  it
//  Date :  2026-10-08
//  Time :  오전 11:36
//  Desc :  

import 'package:flutter/material.dart';
import 'package:flutter_20261008/widgets/geolocator_widget.dart';

//  GPS 사용하기 : 플러터에서 GPS 정보를 사용하려면 geolocator 패키지가 필요함
//  스마트기기의 하드웨어를 사용하는 것이기 때문에 권한을 얻어서 사용해야 함

//  안드로이드
//    AndroidManifest.xml 파일에 권한 설정
//    <uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" />
//    <uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION" />

//  IOS
//    info.plist 파일에 key 등록 설정
//    <key>NSLocationWhenInUseUsageDescription</key>
//    <string>This app needs access to location when open.</string>
//    <key>NSLocationAlwaysUsageDescription</key>
//    <string>This app needs access to location when in the background.</string>

class GeoScreen extends StatelessWidget {
  final String title;

  const GeoScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: GeolocatorWidget(),
    );
  }
}









