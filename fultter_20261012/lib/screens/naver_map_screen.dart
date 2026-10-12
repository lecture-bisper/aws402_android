//  File :  naver_map_screen.dart
//  User :  it
//  Date :  2026-10-12
//  Time :  오후 2:38
//  Desc :  


import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';

class NaverMapScreen extends StatelessWidget {
  const NaverMapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //  NLatLng : GPS 좌표 설정
    const busanCityHall = NLatLng(35.179897, 129.074777);
    final safeAreaPadding = MediaQuery.paddingOf(context);

    return Scaffold(
      //  NaverMap 위젯을 사용하여 네이버 지도를 출력
      body: NaverMap(
        options: NaverMapViewOptions(
          contentPadding: safeAreaPadding,
          //  NCameraPosition() 을 네이버 지도에서 카메라의 위치 및 줌 크기 설정
          initialCameraPosition: NCameraPosition(target: busanCityHall, zoom: 14),
        ),
        onMapReady: (controller) {
          //  NMarker() 를 사용하여 지도 위에 마커를 그림
          final marker = NMarker(
            id: 'city_hall',
            position: busanCityHall,
            caption: NOverlayCaption(text: '부산시청'),
          );

          //  생성할 마커 정보를 지도 위에 출력
          controller.addOverlay(marker);
          debugPrint('네이버지도 출력!!');
        },
      ),
    );
  }
}









