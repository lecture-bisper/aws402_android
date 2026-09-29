//  File :  width_height_widget.dart
//  User :  it
//  Date :  2026-09-29
//  Time :  오후 4:20
//  Desc :  

import 'package:flutter/material.dart';

//  IntrinsicWidth : Row 나 Column 에 추가한 여러 위젯의 크기를 width 를 기준으로 동일하게 설정할 때 사용
//  IntrinsicHeight : Row 나 Column 에 추가한 여러 위젯의 크기를 Height 를 기준으로 동일하게 설정

class WidthHeightWidget extends StatelessWidget {
  const WidthHeightWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: IntrinsicWidth(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(color: Colors.redAccent, width: 50, height: 50,),
            Container(color: Colors.green, width: 150, height: 150,),
            Container(color: Colors.blueAccent, width: 100, height: 100,),
          ],
        ),
      )
    );
  }
}









