//  File :  content_widget.dart
//  User :  it
//  Date :  2026-10-07
//  Time :  오전 10:09
//  Desc :  


import 'package:flutter/material.dart';
import 'package:flutter_20261007/widgets/parent_widget.dart';

//  자식 위젯인 ContentWidget
class ContentWidget extends StatelessWidget {
  final int favoriteCount;

  //  부모 위젯에서 매개변수로 데이터를 전달
  const ContentWidget({super.key, required this.favoriteCount});

  @override
  Widget build(BuildContext context) {
    // findAncestorStateOfType() 통해서 지정한 조상 위젯의 상태를 가져옴
    ParentWidgetState? state = context.findAncestorStateOfType<ParentWidgetState>();

    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.orangeAccent,
            width: 2.0
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              // 'favoriteCount : $favoriteCount',
              //  가져온 조상 위젯의 상태 데이터를 직접 사용
              'favoriteCount : ${state?.favoriteCount}',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}









