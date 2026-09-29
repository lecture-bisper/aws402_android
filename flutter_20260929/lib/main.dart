import 'package:flutter/material.dart';
import 'package:flutter_20260929/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '에셋과 기본 위젯 사용하기',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        primaryColor: Colors.blue
      ),
      home: const HomeScreen(),
    );
  }
}

