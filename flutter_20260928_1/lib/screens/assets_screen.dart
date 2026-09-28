//  File :  assets_screen.dart
//  User :  it
//  Date :  2026-09-28
//  Time :  오후 4:13
//  Desc :


//  애셋 : 플러터의 애셋은 플러터 앱을 구성하는데 활용하는 리소스
//    애셋 파일은 앱을 빌드할 때 앱 내부에 포함됨
//    주로 아이콘, json, 폰트 파일, 이미지, 동영상, 음원 등의 리소스를 의미함
//    애셋 파일을 보관하는 폴더나 파일 이름에 특별한 규칙은 없음
//    애셋 파일을 사용하려면 pubspec.yaml 에 등록해야 함

//  등록 방법
//  1. 리소스를 각각 등록하기
//    flutter:
//      assets:
//        - 폴더명/리소스1명
//        - 폴더명/리소스2명
//        - 폴더명/하위폴더명/리소스명

//  2. 폴더를 통째로 등록하기
//    하위 폴더까지 포함하지는 않기 때문에 하위 폴더는 따로 등록
//    flutter:
//      assets:
//        - 폴더명/
//        - 폴더명/하위폴더명/

//  애셋 변형하기 : 상황에 맞는 애셋을 적용하는 개념
//    플러터 앱이 동작하는 각 단말기는 각 기기마다 해상도의 차이가 있음
//      안드로이드는 hdpi, xhdpi, xxhdpi, xxxhdpi 등이 있고
//      IOS 는 1x, 2x, 3x 등으로 구분함
//    1x 와 2x 의 차이는 똑같은 크기일 경우 1x 보다 2x 가 2배 많은 픽셀을 가진다는 의미

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AssetsScreen extends StatelessWidget {

  const AssetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'images/dog01.jpg',
          width: 150,
          height: 150,
          fit: BoxFit.fill,
        ),
        Image.asset(
          'images/dog02.jpg',
          width: 150,
          height: 150,
          fit: BoxFit.fill,
        ),
        Image.asset(
          'images/sub/dog03.jpg',
          width: 150,
          height: 150,
          fit: BoxFit.fill,
        ),
        Image.asset(
          'images/icon/user.png'
        ),
      ],
    );
  }

}









