//  File :  consumer_sub1_widget.dart
//  User :  it
//  Date :  2026-10-08
//  Time :  오전 10:17
//  Desc :  

import 'package:flutter/material.dart';
import 'package:flutter_20261008/utils/change_provider.dart';

class ConsumerSub1Widget extends StatelessWidget {
  // 컨슈머를 통해서 상태 데이터를 받는 변수
  final MyDataModel1 model1;
  final MyDataModel2 model2;
  final Widget? child;

  const ConsumerSub1Widget({super.key, required this.model1, required this.model2, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
            'Consumer sub1 Widget, ${model1.data}, ${model2.data}',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 8,),
          child!
        ],
      ),
    );
  }
}









