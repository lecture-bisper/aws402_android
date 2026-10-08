//  File :  my_inherited_widget.dart
//  User :  it
//  Date :  2026-10-07
//  Time :  오후 12:19
//  Desc :  

import 'package:flutter/material.dart';

//  InheritedWidget 을 상속받아 사용한 MyInheritedWidget
class MyInheritedWidget extends InheritedWidget {
  //  MyInheritedWidget 를 사용하는 위젯에 공유할 상태 데이터
  int count;

  MyInheritedWidget({super.key, required super.child, required this.count});

  //  상태 데이터를 변경하는 함수
  void increment() {
    count++;
  }

  //  MyInheritedWidget 의 상태 값이 변경되었는지 아닌지 확인하여 변경 시 자식 위젯을 다시 그릴지 여부를 설정하는 함수
  //  반환값이 true 이면 자식 위젯을 다시 그리고, false 이면 다시 그리지 않음
  @override
  bool updateShouldNotify(MyInheritedWidget oldWidget) => count != oldWidget.count;

  //  자손 위젯이 InheritedWidget 를 상속받은 위젯의 객체를 얻기 위해 호출하는 함수
  //  객체 생성 없이 호출해야하기 때문에 static 키워드를 사용
  //  dependOnInheritedWidgetOfExactType() 위젯 계층 구조에서 of() 호출한 것과 가장 가까운 InheritedWidget 을 반환함
  static MyInheritedWidget? of(BuildContext context) => context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>();
}









