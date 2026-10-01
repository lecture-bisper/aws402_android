//  File :  home_screen.dart
//  User :  it
//  Date :  2026-10-01
//  Time :  오전 9:18
//  Desc :  

import 'package:flutter/material.dart';
import 'package:flutter_20261001/screens/material_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: MaterialWidget(),
    );
  }
}









