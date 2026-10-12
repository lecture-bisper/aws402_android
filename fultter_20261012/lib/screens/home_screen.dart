//  File :  home_screen.dart
//  User :  it
//  Date :  2026-10-12
//  Time :  오전 10:34
//  Desc :  

import 'package:flutter/material.dart';
import 'package:fultter_20261012/screens/auth_screen.dart';

class HomeScreen extends StatelessWidget {
  final String title;
  const HomeScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: AuthScreen(title: title),
    );
  }
}









