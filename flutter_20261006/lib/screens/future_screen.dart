//  File :  future_screen.dart
//  User :  it
//  Date :  2026-10-06
//  Time :  오후 2:22
//  Desc :  

import 'package:flutter/material.dart';

class FutureScreen extends StatelessWidget {
  const FutureScreen({super.key});

  Future<int> futureSum() {
    return Future<int> (() async {
      int sum = 0;

      await Future.delayed(Duration(seconds: 2));
      for (int i = 0; i < 50000000; i++) {
        sum += i;
      }

      return sum;
    });
  }

  @override
  Widget build(BuildContext context ) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Future 사용하기'),
      ),
      body: FutureBuilder(
        future: futureSum(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Center(
              child: Text(
                'result : ${snapshot.data}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
            );
          }
          else {
            return Center(
              child: Text(
                'waiting',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
            );
          }
        }
      ),
    );
  }

}









