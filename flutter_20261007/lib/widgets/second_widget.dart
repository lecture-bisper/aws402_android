//  File :  second_widget.dart
//  User :  it
//  Date :  2026-10-07
//  Time :  오후 2:23
//  Desc :  

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SecondWidget extends StatelessWidget {
  const SecondWidget({super.key});

  @override
  Widget build(BuildContext context) {
    //  프로바이더에 저장된 데이터 가져오기
    final data = Provider.of<int>(context);

    return Container(
      color: Colors.orangeAccent,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Second Widget',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8.0,),
            Text(
              'Provider Data : $data',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}









