//  File :  row_column_widget.dart
//  User :  it
//  Date :  2026-09-29
//  Time :  오후 2:52
//  Desc :  

import 'package:flutter/material.dart';

//  배치관련 위젯
//  Row : 배치 관련 위젯, children 속성을 가지고 있으며, 자식 위젯을 가로로 배치, 주축은 가로, 교차축은 세로
//  Column : 배치 관련 위젯, children 속성을 가지고 있으며, 자식 위젯을 세로로 배치, 주축은 세로, 교차축은 가로

//  MainAxisAlignment : 주축에 대한 정렬 방식 설정
//    start, center, end, spaceBetween, spaceAround, spaceEvenly 가 있음
//  CrossAxisAlignment : 교차축에 대한 정렬 방식 설정
//    start, center, end, stretch, baseline

//  Stack : 배치 관련 위젯, children 속성을 가지고 있으며, 자식 위젯을 겹쳐서 배치, 순서상 먼저 입력된 위젯이 아래에 있고, 나중에 입력된 위젯이 위에 있음

//  IndexedStack : 배치 관련 위젯, children 속성을 가지고 있으며, 자식 위젯을 겹친 후 지정한 1개의 위젯만 출력
//    index 속성을 사용하여 원하는 위젯만 출력, 0부터 시작

class RowColumnWidget extends StatelessWidget {
  const RowColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // return SizedBox(
    //   // height: double.infinity,
    //   // child: Row(
    //   //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //   //   crossAxisAlignment: CrossAxisAlignment.center,
    //   //   children: [
    //   //     Container(width: 50, height: 50, color: Colors.redAccent,),
    //   //     Container(width: 50, height: 50, color: Colors.greenAccent,),
    //   //     Container(width: 50, height: 50, color: Colors.blueAccent,),
    //   //   ],
    //   // ),
    //   // width: double.infinity,
    //   // child: Column(
    //   //   mainAxisAlignment: MainAxisAlignment.center,
    //   //   crossAxisAlignment: CrossAxisAlignment.center,
    //   //   children: [
    //   //     Container(width: 50, height: 50, color: Colors.redAccent,),
    //   //     Container(width: 50, height: 50, color: Colors.greenAccent,),
    //   //     Container(width: 50, height: 50, color: Colors.blueAccent,),
    //   //   ],
    //   // ),
    // );


    return Column(
      children: [
        Container(
          // 아래 여백을 5로 설정
          margin: EdgeInsets.only(bottom: 5),
          color: Colors.yellow,
          //  Row 위젯으로 자식 위젯을 가로 배치
          child: Row(
            //  Row 위젯의 주축은 가로이므로, MainAxisAlignment 는 가로 정렬, 가로는 중앙 정렬
            mainAxisAlignment: MainAxisAlignment.center,
            //  Row 위젯의 주축은 가로이므로, CrossAxisAlignment 는 세로 정렬, 세로는 상단 정렬
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(width: 50, height: 100, color: Colors.red,),
              Container(width: 50, height: 50, color: Colors.green,),
              Container(width: 50, height: 150, color: Colors.blue,),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 5),
          color: Colors.yellow,
          child: Row(
            //  가로 정렬, 자식 위젯의 안쪽 가로 여백을 동일하게 설정
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //  세로 정렬, 세로 하단 정렬
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(width: 50, height: 100, color: Colors.red,),
              Container(width: 50, height: 50, color: Colors.green,),
              Container(width: 50, height: 150, color: Colors.blue,),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 5),
          color: Colors.yellow,
          height: 200,
          child: Row(
            //  가로 정렬, 자식 위젯의 가로 여백이 모두 동일
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //  세로 정렬, 세로는 부모의 크기만큼 채움
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(width: 50, height: 100, color: Colors.red,),
              Container(width: 50, height: 50, color: Colors.green,),
              Container(width: 50, height: 150, color: Colors.blue,),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 5),
          color: Colors.yellow,
          height: 200,
          // child: Stack(
          //   children: [
          //     Container(color: Colors.red,),
          //     Container(width: 100, height: 100, color: Colors.green,),
          //     Container(width: 50, height: 50, color: Colors.yellow,),
          //   ],
          // ),
          child: IndexedStack(
            index: 1,
            children: [
              Container(color: Colors.red,),
              Container(width: 100, height: 100, color: Colors.greenAccent,),
              Container(width: 50, height: 50, color: Colors.blueAccent,),
            ],
          ),
        ),
      ],
    );
  }

}









