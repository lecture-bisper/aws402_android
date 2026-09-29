//  File :  container_widget.dart
//  User :  it
//  Date :  2026-09-29
//  Time :  오후 12:31
//  Desc :

import 'package:flutter/material.dart';

//  Container : 자체적으로 UI 를 가지고 있지 않은 위젯
//    html 의 div 태그와 비슷한 기능을 하는 위젯
//    자식 위젯의 공간을 설정할 경우 사용
//    크기 설정 가능
//    padding, margin 을 설정할 수 있음
//      주로 EdgeInsets 클래스를 많이 사용함
//        all() : top, right, bottom, left 4 방향에 동일한 값 적용
//        only() : 지정한 한 곳의 방향에만 적용
//        symmetric() : 가로나 세로에 적용

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context)  {
    //  Container 를 사용하여 지정한 크기의 영역 설정
    return Container(
      //  최대 높이만큼 사용
      height: Size.infinite.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.red, Colors.yellow],
        ),
      ),
      child: Center(
        child: Container(
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('images/dog02.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
