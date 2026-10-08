//  File :  change_provider.dart
//  User :  it
//  Date :  2026-10-08
//  Time :  오전 10:10
//  Desc :  

import 'package:flutter/material.dart';

class MyDataModel1 extends ChangeNotifier {
  int data = 0;

  void changeData() {
    data++;
    notifyListeners();
  }
}

class MyDataModel2 extends ChangeNotifier {
  String data = 'hello';

  void changeData() {
    if (data == 'hello') {
      data = 'world';
    }
    else {
      data = 'hello';
    }
    notifyListeners();
  }
}

class MyDataModel3 extends ChangeNotifier {
  int data1 = 0;
  int data2 = 10;

  void changeData1() {
    data1++;
    notifyListeners();
  }

  void changeData2() {
    data2++;
    notifyListeners();
  }
}








