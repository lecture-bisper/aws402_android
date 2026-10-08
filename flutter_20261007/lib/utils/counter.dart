//  File :  counter.dart
//  User :  it
//  Date :  2026-10-07
//  Time :  오후 3:02
//  Desc :  

import 'package:flutter/material.dart';

//  ChangeNotifierProvider 에 등록하기 위한 ChangeNotifier 클래스를 상속받아 사용하는 클래스 Counter
class Counter extends ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    debugPrint('변경된 상태 값 : $_count');
    //  상태 데이터 값을 변경 후 반드시 notifyListeners() 함수를 호출해야 함
    notifyListeners();
  }
}









