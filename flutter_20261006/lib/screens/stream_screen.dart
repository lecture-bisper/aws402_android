//  File :  stream_screen.dart
//  User :  it
//  Date :  2026-10-06
//  Time :  오후 4:37
//  Desc :  

import 'package:flutter/material.dart';

class StreamScreen extends StatelessWidget {
  const StreamScreen({super.key});

  int calFunc(int x) {
    return  x * x;
  }

  Stream<int> streamExecute() {
    Duration duration = Duration(seconds: 3);
    Stream<int> stream = Stream<int>.periodic(duration, calFunc);
    return stream.take(6);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Stream 사용하기'),
      ),
      body: Center(
        child: StreamBuilder(
          stream: streamExecute(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Center(
                child: Text(
                  'Completed',
                  style: TextStyle(fontSize: 30.0,),
                ),
              );
            }
            else if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 100, height: 100,
                      child: CircularProgressIndicator(),
                    ),
                    Text(
                      'waiting...',
                      style: TextStyle(fontSize: 20.0,),
                    ),
                  ],
                ),
              );
            }
            else {
              return Center(
                child: Text(
                  'data : ${snapshot.data}',
                  style: TextStyle(fontSize: 30.0,),
                ),
              );
            }
          }
        ),
      ),
    );
  }
}









