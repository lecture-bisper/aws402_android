//  File :  home_screen.dart
//  User :  it
//  Date :  2026-09-30
//  Time :  오전 9:17
//  Desc :  

import 'package:flutter/material.dart';
import 'package:flutter_20260930/screens/checkbox_radio_slider_widget.dart';
import 'package:flutter_20260930/screens/dialog_widget.dart';
import 'package:flutter_20260930/screens/form_widget.dart';
import 'package:flutter_20260930/screens/grid_view_widget.dart';
import 'package:flutter_20260930/screens/list_widget.dart';
import 'package:flutter_20260930/screens/page_view_widget.dart';
import 'package:flutter_20260930/screens/tab_bar_widget.dart';
import 'package:flutter_20260930/screens/text_field_widget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: SafeArea(
        // child: ListWidget(),
        // child: GridViewWidget(),
        // child: PageViewWidget(),
        // child: DialogWidget(),
        // child: TextFieldWidget(),
        // child: CheckboxRadioSliderWidget(),
        child: FormWidget(),
      ),
    );

    //  TabBarView 위젯 사용하기
    // return const TabBarWidget();
  }
}









