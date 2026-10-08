//  File :  provider_screen.dart
//  User :  it
//  Date :  2026-10-07
//  Time :  오후 2:02
//  Desc :  

import 'package:flutter/material.dart';
import 'package:flutter_20261007/widgets/first_widget.dart';

//  Provider : 2019년 구글IO에서 앱의 상태 관리 프레임워크로 출시
//    상위 위젯의 상태를 하위 위젯에서 사용하는 기본 방법은 InheritedWidget 이지만 Provider 는 조금 더 쉽고 다양한 방식을 제공함
//    프로바이더를 사용하려면 패키지를 설치해야 함

//  Provider : 하위 위젯이 이용할 상태 데이터 제공
//  Consume : 하위 위젯에서 상태 데이터 이용

//    Provider : 기본 프로바이더
//    ChangeNotifierProvider : 상태 변경 감지 기능을 제공하는 프로바이더
//    MultiProvider : 한번에 여러가지 상태를 등록하는 프로바이더
//    FutureProvider : Future 결과를 상태로 제공하는 프로바이더
//    StreamProvider : Stream 결과를 상태로 제공하는 프로바이더

//    Provider.of() : 프로바이더의 상태 데이터 가져오기
//    Consumer : 상태를 이용할 위젯 명시


//  사용법
//  Provider<데이터타입>.value() : 첫번째 매개변수(value)로 상태 데이터 입력, 두번째 매개변수(child)로 사용할 위젯 설정
//    child 로 지정한 위젯부터 해당 위젯의 자손 위젯에서 모두 지정한 프로바이더를 사용할 수 있음
//  Provider<데이터타입>() : 첫번째 매개변수(create)로 상태 데이터를 가지고 있는 함수, 두번재 매개변수(child)로 사용할 위젯 설정
//    create 에 등록된 익명함수의 반환값을 상태 데이터로 사용함
//  Provider.of<데이터타입>(context) : 프로바이더에 저장된 상태 데이터를 가져옴

class ProviderScreen extends StatelessWidget{
  const ProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('프로바이더 사용하기'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: FirstWidget(),
      ),
    );
  }
}









