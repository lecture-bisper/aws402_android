//  File :  align_positioned_widget.dart
//  User :  it
//  Date :  2026-09-29
//  Time :  오후 3:58
//  Desc :  

import 'package:flutter/material.dart';

//  Align : Row 나 Column 을 사용하지 않고 위젯을 원하는 위치에 배치, Stack 위젯과 같이 겹쳐져 있는 위젯의 위치를 원하는 위치에 배치할 경우 사용함
//  Positioned : Align 과 동일한 기능을 함, Stack 위젯에서만 사용 가능


//    Alignment : Align 위젯의 위치를 지정하는 클래스
//      top, bottom, center, left, right 를 조합하여 사용
//      Alignment(x, y) 를 사용하여 위치값을 직접 입력할 수 있음, 0 은 중앙, -1 은 왼쪽|상단, +1 은 오른쪽|하단

class AlignPositionedWidget extends StatelessWidget {
  const AlignPositionedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // return Align(
    //   alignment: Alignment.center,
    //   child: Container(
    //     color: Colors.redAccent,
    //     width: 100,
    //     height: 100,
    //   ),
    // );

    // return Stack(
    //   children: [
    //     Container(
    //       color: Colors.redAccent,
    //     ),
    //     Align(
    //       alignment: Alignment.center,
    //       child: Container(
    //         width: 300,
    //         height: 300,
    //         color: Colors.greenAccent,
    //       ),
    //     ),
    //     Align(
    //       alignment: Alignment(1,1),
    //       child: Container(
    //         width: 150,
    //         height: 150,
    //         color: Colors.blueAccent,
    //       ),
    //     ),
    //   ],
    // );

    return Stack(
      children: [
        Container(
          color: Colors.redAccent,
        ),
        Positioned(
          top: 50,
          left: 50,
          child: Container(
            width: 300,
            height: 300,
            color: Colors.greenAccent,
          ),
        ),
        Positioned(
          bottom: 50,
          right: 50,
          child: Container(
            width: 150,
            height: 150,
            color: Colors.blueAccent,
          ),
        ),
      ],
    );
  }
}









