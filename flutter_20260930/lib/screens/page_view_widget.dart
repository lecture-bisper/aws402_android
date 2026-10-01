//  File :  page_view_widget.dart
//  User :  it
//  Date :  2026-09-30
//  Time :  오전 11:02
//  Desc :  

import 'package:flutter/material.dart';

//  PageView : 여러개의 위젯을 나열하는 위젯, 하나의 위젯만 출력하고 스와이프를 통해서 출력할 위젯을 변경하는 위젯
//    PageController 를 사용하여 처음에 보여질 자식 위젯과 UI의 크기를 설정
//      initialPage : 가 처음 화면에 출력할 위젯 설정, 0부터 시작
//      viewportFraction : PageView 의 화면 크기 설정, 0.1 이상,

class PageViewWidget extends StatelessWidget {
  PageViewWidget({super.key});

  PageController pageController = PageController(initialPage: 1, viewportFraction: 1.0);

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        Container(
          margin: EdgeInsets.all(20),
          color: Colors.redAccent,
          child: Center(
            child: Text(
              'One Page',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(20),
          color: Colors.greenAccent,
          child: Center(
            child: Text(
              'One Page',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(20),
          color: Colors.blueAccent,
          child: Center(
            child: Text(
              'One Page',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
      ],
    );
  }
}










