import 'package:flutter/material.dart';
import 'package:flutter_20261008/router/app_routes.dart';
import 'package:flutter_20261008/screens/home_screen.dart';

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
      //  AppRoutes 클래스를 가져와서 라우팅 정보 설정
      initialRoute: AppRoutes.home,
      routes: AppRoutes.routes,
    );
  }
}


