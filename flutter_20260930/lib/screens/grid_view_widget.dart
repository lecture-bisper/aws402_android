//  File :  grid_view_widget.dart
//  User :  it
//  Date :  2026-09-30
//  Time :  오전 10:37
//  Desc :  

import 'package:flutter/material.dart';

//  GridView : ListView 여러개의 위젯을 나열하는 위젯, 출력형태를 Grid(격자)형태로 출력
//    ListView 처럼 GridView.builder() 를 사용하여 출력할 자식 위젯의 수와 형태를 설정할 수 있음
//    scrollDirection 속성을 사용하여 배치 방향을 가로, 세로로 설정할 수 있음
//    gridDelegate 속성을 사용하여 한 라인에 출력할 수를 설정할 수 있음
//      SliverGridDelegateWithFixedCrossAxisCount(출력 수) 으로 설정

class GridViewWidget extends StatelessWidget {
  GridViewWidget({super.key});

  List<String> citys = ['서울시', '인천시', '부산시', '대구시', '대전시', '울산시', '세종시', '경주시', '밀양시', '거제시', '목포시', '제주시'];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.vertical,
      itemCount: citys.length,
      itemBuilder: (context, index) {
        return Card(
          child: Column(
            children: [
              Text(citys[index]),
              Image.asset('assets/images/big.jpeg'),
            ],
          ),
        );
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    );
  }

}









