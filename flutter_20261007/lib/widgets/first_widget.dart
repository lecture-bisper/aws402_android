//  File :  first_widget.dart
//  User :  it
//  Date :  2026-10-07
//  Time :  오후 2:20
//  Desc :  

import 'package:flutter/material.dart';
import 'package:flutter_20261007/widgets/second_widget.dart';
import 'package:provider/provider.dart';

class FirstWidget extends StatelessWidget {
  const FirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    //  Provider 를 사용하여 상태 데이터 저장
    //  create 를 사용하여 상태 데이터를 생성
    // return Provider.value(value: 55,
    return Provider<int>(
      create: (context) {
        int sum = 0;

        for (int i = 1; i <= 10; i++) {
          sum += 1;
        }

        return sum;
      },
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.indigo,
            width: 2.0,
          ),
        ),
        child: SecondWidget(),
      ),
    );
  }
}









