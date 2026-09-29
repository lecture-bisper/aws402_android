//  File :  use_assets.dart
//  User :  it
//  Date :  2026-09-29
//  Time :  오전 9:34
//  Desc :  

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UseAssets extends StatelessWidget{

  const UseAssets({super.key});

  //  에셋 파일을 코드에서 이용할 경우 AssetBundle 클래스의 loadString() 혹은 load() 함수를 사용
  //  AssetBundle 는 추상 클래스이기 때문에 rootBundle 혹은 DefaultAssetBundle 을 사용하여 AssetBundle 타입의 객체로 사용해야 함

  //  rootBundle : 앱 전역에서 사용하는 AssetBundle
  //  DefaultAssetBundle : 위젯에서 사용하는 AssetBundle

  // Future 를 사용하여 비동기 방식으로 불러온 데이터를 반환
  Future<String> useRootBundle() async {
    //  앱 전역 데이터로 지정한 리소스 파일에서 데이터를 가져옴
    return await rootBundle.loadString('assets/text/my_text.txt');
  }

  // Future 를 사용하여 비동기 방식으로 불러온 데이터를 반환
  Future<String> useDefaultAssetBundle(BuildContext context) async {
    //  현재 위젯에서만 사용하는 데이터로 지정한 리소스 파일에서 데이터를 가져옴
    return await DefaultAssetBundle.of(context).loadString('assets/text/my_text.txt');
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Image.asset('images/dog02.jpg'),
        Image.asset('images/icon/user.png'),
        //  FutureBuilder 을 사용하여 비동기 방식으로 사용자 위젯을 생성
        FutureBuilder(
          //  비동기 방식으로 동작할 함수 호출
          future: useRootBundle(),
          //  비동기 방식으로 위젯을 만드는 함수 호출(현재는 익명함수로 처리)
          //  첫번째 매개변수는 생성한 위젯을 붙일 위젯트리
          //  두번째 매개변수는 future 에서 비동기 방식으로 호출한 함수의 반환값
          builder: (context, snapshot) {
            return Text('rootBundle : ${snapshot.data}');
          }
        ),
        FutureBuilder(
          future: useDefaultAssetBundle(context),
          builder: (context, snapshot) {
            return Text('DefaultAssetBundle : ${snapshot.data}');
          },
        ),
      ],
    );
  }

}









