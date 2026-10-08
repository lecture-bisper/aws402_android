//  File :  middle_widget.dart
//  User :  it
//  Date :  2026-10-07
//  Time :  오전 11:37
//  Desc :  

import 'package:flutter/material.dart';
import 'package:flutter_20261007/widgets/child_widget.dart';

class MiddleWidget extends StatelessWidget {
  final GlobalKey<ChildWidgetState> childKey;
  //  조상 위젯에서 key 만 받아서 자손 위젯으로 전달
  const MiddleWidget({super.key, required this.childKey});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.lightGreenAccent,
          width: 2.0,
        ),
      ),
      child: ChildWidget(key: childKey),
    );
  }
}










