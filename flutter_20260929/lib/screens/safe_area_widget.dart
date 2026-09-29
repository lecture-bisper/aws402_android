//  File :  safe_area_widget.dart
//  User :  it
//  Date :  2026-09-29
//  Time :  오후 2:29
//  Desc :  

import 'package:flutter/material.dart';

class SafeAreaWidget extends StatelessWidget {
  const SafeAreaWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      top: true,
      bottom: true,
      left: true,
      right: true,
      child: Container(
        height: 300,
        width: 300,
        color: Colors.red,
      ),
    );
  }


}









