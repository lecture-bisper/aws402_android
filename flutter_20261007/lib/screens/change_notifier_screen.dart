//  File :  change_notifier_screen.dart
//  User :  it
//  Date :  2026-10-07
//  Time :  오후 2:55
//  Desc :  

import 'package:flutter/material.dart';
import 'package:flutter_20261007/widgets/change_notifier_widget.dart';

//  변경된 상태 데이터를 하위 위젯에 적용하려면 ChangeNotifierProvider 를 사용
//  ChangeNotifierProvider 에 등록하는 상태 데이터는 ChangeNotifier 클래스를 상속받아 사용해야 함
//  ChangeNotifierProvider 에는 기초 타입의 상태 데이터는 등록할 수 없음

class ChangeNotifierScreen extends StatelessWidget {
  const ChangeNotifierScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('ChangeNotifierProvider 사용'),
        ),
        body: ChangeNotifierWidget(),
    );
  }
}









