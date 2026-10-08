//  File :  test_widget.dart
//  User :  it
//  Date :  2026-10-07
//  Time :  오후 12:28
//  Desc :  

import 'package:flutter/material.dart';
import 'package:flutter_20261007/widgets/my_inherited_widget.dart';
import 'package:flutter_20261007/widgets/test_sub_widget.dart';

class TestWidget extends StatelessWidget {
  TestWidget() {
    print('TestWidget 의 생성자 호출...');
  }

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        //  MyInheritedWidget 을 가져옴
        MyInheritedWidget? widget = MyInheritedWidget.of(context);
        //  MyInheritedWidget 의 상태 데이터 가져오기
        int counter = MyInheritedWidget.of(context)!.count;
        //  MyInheritedWidget 의 상태 데이터 수정 함수 가져오기
        Function increment = MyInheritedWidget.of(context)!.increment;

        return Center(
          child: Container(
            color: Colors.redAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'TestWidget : $counter',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0,),
                FilledButton(
                  onPressed: () {
                    setState(() => increment());
                  },
                  child: Text('increment()'),
                ),
                SizedBox(height: 8.0,),
                FilledButton(
                  onPressed: () {
                    setState(() => widget!.count++);
                  },
                  child: Text('count++'),
                ),
                SizedBox(height: 8.0,),
                TestSubWidget(),
              ],
            ),
          ),
        );
      }
    );
  }
}









