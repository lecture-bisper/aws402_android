import 'package:flutter/material.dart';
//  하위 폴더인 screens 안에 있는 home_screen 모듈을 import
import 'package:flutter_20260928_1/screens/home_screen.dart';
import 'package:flutter_20260928_1/screens/lifecycle_widget.dart';
import 'package:flutter_20260928_1/screens/my_list_widget.dart';
import 'package:flutter_20260928_1/screens/assets_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //  StatelessWidget 사용
        // body: CheckWidget1(),
        //  StatefulWidget 사용
        // body: CheckWidget2(),
        //  LifecycleWidget 클래스의 생성자 호출, 매개변수로 데이터를 전달
        // body: LifecycleWidget(label: '부모가 전달하는 데이터 2'),
        // body: MyListWidget(),
        body: AssetsScreen(),
      ),
    );
  }
}
