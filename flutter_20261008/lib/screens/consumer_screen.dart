//  File :  consumer_screen.dart
//  User :  it
//  Date :  2026-10-08
//  Time :  오전 10:01
//  Desc :  

import 'package:flutter/material.dart';
import 'package:flutter_20261008/utils/change_provider.dart';
import 'package:flutter_20261008/widgets/consumer_home_widget.dart';
import 'package:provider/provider.dart';

class ConsumerScreen extends StatelessWidget {
  const ConsumerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Consumer 사용하기'),
      ),
      body: MultiProvider(
        providers: [
          ChangeNotifierProvider<MyDataModel1>.value(value: MyDataModel1(),),
          ChangeNotifierProvider<MyDataModel2>.value(value: MyDataModel2(),),
        ],
        child: ConsumerHomeWidget(),
      ),
    );
  }
}









