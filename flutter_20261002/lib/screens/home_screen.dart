//  File :  home_screen.dart
//  User :  it
//  Date :  2026-10-02
//  Time :  오전 9:17
//  Desc :  

import 'package:flutter/material.dart';
import 'package:flutter_20261002/screens/dio_comm_screen.dart';
import 'package:flutter_20261002/screens/http_comm_screen.dart';
import 'package:flutter_20261002/screens/json_parse_screen.dart';
import 'package:flutter_20261002/screens/kobis_dailyboxoffice_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      // body: JsonParseScreen(),
      // body: const HttpCommScreen(),
      // body: const DioCommScreen(),
      body: const KobisDailyboxofficeScreen(),
    );
  }
}










