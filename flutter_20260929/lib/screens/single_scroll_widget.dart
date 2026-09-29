//  File :  single_scroll_widget.dart
//  User :  it
//  Date :  2026-09-29
//  Time :  오후 4:56
//  Desc :  


import 'package:flutter/material.dart';

//  SingleChildScrollView : 화면 스크롤을 제공하는 위젯
//    scrollDirection 을 설정하여 가로 혹은 세로 스크롤을 설정
//    Axis 객체를 사용하여 스크롤 방향을 지정함

class SingleScrollWidget extends StatelessWidget {
  const SingleScrollWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            color: Colors.redAccent,
            height: 300,
            child: Row(
              children: [
                Container(color: Colors.orangeAccent, width: 100,),
                Expanded(
                  child: Container(color: Colors.amber,),
                ),
                Expanded(
                  child: Container(color: Colors.cyan,),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.greenAccent,
            height: 300,
            child: Row(
              children: [
                Image.asset('images/dog01.jpg', width: 100,),
                Image.asset('images/dog02.jpg', width: 100,),
                Image.asset('images/sub/dog03.jpg', width: 100,),
                Spacer(),
                Image.asset('images/icon/user.png', height: 100,)
              ],
            ),
          ),
          Container(color: Colors.blueAccent, height: 300,),
        ],
      ),
    );
  }
}










