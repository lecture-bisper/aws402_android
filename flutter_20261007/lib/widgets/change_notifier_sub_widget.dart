//  File :  change_notifier_sub_widget.dart
//  User :  it
//  Date :  2026-10-07
//  Time :  오후 3:07
//  Desc :  

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../utils/counter.dart';

class ChangeNotifierSubWidget extends StatelessWidget {
  const ChangeNotifierSubWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var counter = Provider.of<Counter>(context);

    return Container(
      color: Colors.orangeAccent,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Provider count : ${counter.count}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8.0,),
            FilledButton(
              onPressed: () {
                counter.increment();
              },
              child: Text('increment')
            ),
          ],
        ),
      ),
    );
  }
}









