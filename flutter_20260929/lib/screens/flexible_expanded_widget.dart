//  File :  flexible_expanded_widget.dart
//  User :  it
//  Date :  2026-09-29
//  Time :  오후 4:33
//  Desc :  

import 'package:flutter/material.dart';

//  Flexible : Row 나 Column 에서 사용하는 위젯으로 부모의 크기만큼 비율로 공간을 차지하는 위젯
//    flex 값을 입력하여 비율을 설정함, 기본값 1
//  Expended : Flexible 을 상속받아 구현된 위젯으로 남아있는 공간을 최대한으로 가져감
//  Spacer : 나머지 공간을 모두 차지하여 내용을 비우는 위젯

class FlexibleExpandedWidget extends StatelessWidget {
  const FlexibleExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // return Column(
    //   children: [
    //     Flexible(
    //       flex: 1,
    //       child: Container(color: Colors.blueAccent,),
    //     ),
    //     Flexible(
    //       flex: 1,
    //       child: Container(color: Colors.redAccent,),
    //     ),
    //   ],
    // );

    return Column(
      children: [
        Container(
          height: 100,
          color: Colors.yellow,
          child: Row(
            children: [
              Image.asset('images/dog01.jpg', width: 50,),
              Image.asset('images/dog02.jpg', width: 50,),
              Image.asset('images/sub/dog03.jpg', width: 50,),
              Spacer(),
              Image.asset('images/icon/user.png', height: 50,),
            ],
          ),
        ),
        Expanded(
          child: Container(color: Colors.redAccent,),
        ),
        Container(
          height: 100,
          color: Colors.blueAccent,
        ),
        Expanded(
          child: Container(color: Colors.redAccent,),
        ),
      ],
    );
  }
}








