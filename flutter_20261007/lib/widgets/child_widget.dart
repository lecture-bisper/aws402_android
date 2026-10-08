//  File :  child_widget.dart
//  User :  it
//  Date :  2026-10-07
//  Time :  오전 11:06
//  Desc :  

import 'package:flutter/material.dart';

class ChildWidget extends StatefulWidget {
  const ChildWidget({super.key});

  @override
  State<ChildWidget> createState() => ChildWidgetState();
}

class ChildWidgetState extends State<ChildWidget> {
  //  현재 위젯의 상태 데이터
  int childCount = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.amber,
          width: 2.0,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Child Widget, $childCount',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(width: 8.0,),
          FilledButton(
            // 버튼 클릭 시 현재 위젯의 상태 변수의 값을 변경
            onPressed: (){
              setState(() {
                childCount++;
              });
            },
            child: Text('up'),
          ),
        ],
      ),
    );
  }

}









