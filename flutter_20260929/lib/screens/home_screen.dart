//  File :  home_screen.dart
//  User :  it
//  Date :  2026-09-29
//  Time :  오전 9:28
//  Desc :  


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_20260929/screens/align_positioned_widget.dart';
import 'package:flutter_20260929/screens/container_widget.dart';
import 'package:flutter_20260929/screens/flexible_expanded_widget.dart';
import 'package:flutter_20260929/screens/gesture_widget.dart';
import 'package:flutter_20260929/screens/icon_widget.dart';
import 'package:flutter_20260929/screens/image_widget.dart';
import 'package:flutter_20260929/screens/row_column_widget.dart';
import 'package:flutter_20260929/screens/safe_area_widget.dart';
import 'package:flutter_20260929/screens/single_scroll_widget.dart';
import 'package:flutter_20260929/screens/text_widget.dart';
import 'package:flutter_20260929/screens/use_assets.dart';
import 'package:flutter_20260929/screens/width_height_widget.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});

  // FloatingActionButton : UI 의 특정 위치에 계속 존재해야 하는 버튼이므로, Scaffold 위젯에 포함되어 있음

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('에셋과 기본 위젯'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('FloatingActionButton 클릭!!');
        },
        shape: CircleBorder(),
        child: Text(
          '클릭',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),
        ),
      ),
      // body: const UseAssets(),
      // body: TextWidget(),
      // body: const ImageWidget(),
      // body: IconWidget(),
      // body: const GestureWidget(),
      // body: const ContainerWidget(),
      // body: const SafeAreaWidget(),
      // body: const RowColumnWidget(),
      // body: const AlignPositionedWidget(),
      // body: const WidthHeightWidget(),
      // body: const FlexibleExpandedWidget(),
      body: SingleScrollWidget(),
    );
  }

}










