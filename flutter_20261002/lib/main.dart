import 'package:flutter/material.dart';
import 'package:flutter_20261002/screens/home_screen.dart';
import 'package:flutter_20261002/screens/memo_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: const MemoScreen(),
      home: const HomeScreen(title: '',),
    );
  }
}
