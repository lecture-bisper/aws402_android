//  File :  selector_screen.dart
//  User :  it
//  Date :  2026-10-08
//  Time :  오전 10:49
//  Desc :  

import 'package:flutter/material.dart';
import 'package:flutter_20261008/utils/change_provider.dart';
import 'package:flutter_20261008/widgets/selector_home_widget.dart';
import 'package:provider/provider.dart';

class SelectorScreen extends StatelessWidget {
  final String title;
  const SelectorScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(title),
        ),
        body: MultiProvider(
          providers: [
            ChangeNotifierProvider<MyDataModel3>.value(value: MyDataModel3()),
          ],
          child: SelectorHomeWidget(),
        ),
    );
  }
}










