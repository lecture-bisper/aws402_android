//  File :  geolocator_widget.dart
//  User :  it
//  Date :  2026-10-08
//  Time :  오후 12:11
//  Desc :  

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class GeolocatorWidget extends StatefulWidget {
  const GeolocatorWidget({super.key});

  @override
  State<StatefulWidget> createState() => _GeolocatorWidgetState();
}

class _GeolocatorWidgetState extends State<GeolocatorWidget> {
  String? latitude;
  String? longitude;

  getGeoData() async {
    //  GPS 사용 권한 확인
    LocationPermission permission = await Geolocator.checkPermission();

    //  주어진 권한 상태 확인
    if (permission == LocationPermission.denied) {
      //  권한이 없을 경우 GPS 사용 권한을 사용자에게 요청
      permission = await Geolocator.requestPermission();

      if (permission == LocationPermission.denied) {
        return Future.error('GPS 사용 권한이 없습니다');
      }
    }

    //  현재 GPS 좌표 정보를 가져옴
    Position position = await Geolocator.getCurrentPosition();
    setState(() {
      latitude = position.latitude.toString();
      longitude = position.longitude.toString();
    });
  }

  @override
  void initState() {
    super.initState();
    getGeoData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigoAccent,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'MyLocation',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0,),
            Text(
              'latitude : $latitude',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0,),
            Text(
              'longitude : $longitude',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0,),
            FilledButton(
              onPressed: getGeoData,
              child: Text('GPS 정보 가져오기')
            ),
          ],
        ),
      ),
    );
  }
}









