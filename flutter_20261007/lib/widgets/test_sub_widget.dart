//  File :  test_sub_widget.dart
//  User :  it
//  Date :  2026-10-07
//  Time :  오후 12:28
//  Desc :  

import 'package:flutter/material.dart';
import 'package:flutter_20261007/widgets/my_inherited_widget.dart';

class TestSubWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //  MyInheritedWidget 의 상태 데이터 가져오기
    int count = MyInheritedWidget.of(context)!.count;

    return Container(
      width: 200,
      height: 200,
      color: Colors.yellowAccent,
      child: Center(
        child: Text(
          'SubWidget : $count',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

}









