//  File :  Inherited_screen.dart
//  User :  it
//  Date :  2026-10-07
//  Time :  오후 12:12
//  Desc :  

import 'package:flutter/material.dart';
import 'package:flutter_20261007/widgets/my_inherited_widget.dart';

import '../widgets/test_widget.dart';

//  InheritedWidget : 자손 위젯에서 공통으로 이용하는 상태를 가지는 위젯
//    InheritedWidget 은 위젯이지만 build() 함수가 없는 위젯
//    화면 UI 없이 상태값과 상태값을 수정하는 함수만 가지고 있는 위젯
//    사용 시 InheritedWidget 를 상속받아 클래스를 만들고 자손 위젯에서 상태 데이터를 사용할 수 있는 상태 데이터 관리 함수를 선언하여 사용

class InheritedScreen extends StatelessWidget {
  const InheritedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('상태 관리'),
      ),
      body: MyInheritedWidget(count: 0, child: TestWidget()),
    );
  }
}










