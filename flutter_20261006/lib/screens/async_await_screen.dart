//  File :  async_await_screen.dart
//  User :  it
//  Date :  2026-10-06
//  Time :  오후 3:12
//  Desc :  async, await 사용하기

import 'package:flutter/material.dart';

class AsyncAwaitScreen extends StatelessWidget {
  const AsyncAwaitScreen({super.key});

  //  비동기 방식 함수1
  Future<int> funcA() {
    return Future.delayed(Duration(seconds: 3), () {
      return 10;
    });
  }

  //  비동기 방식 함수2
  Future<int> funcB(int arg) {
    return Future.delayed(Duration(seconds: 2), () {
      return arg * arg;
    });
  }

  Future<int> calFunc() async {
    //  then() 을 사용하는 방식
    // return funcA().then((aResult) {
    //   return funcB(aResult);
    // }).then((bResult) {
    //   return bResult;
    // });

  //   async, await 를 사용하는 방식
    int aResult = await funcA();
    int bResult = await funcB(aResult);

    return bResult;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Future 사용하기'),
      ),
      body: Center(
        child: FutureBuilder(
          future: calFunc(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Center(
                child: Text(
                  'result : ${snapshot.data}',
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
              );
            }
            else {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 100, width: 100,
                      child: CircularProgressIndicator(),
                    ),
                    Text(
                      'Waiting...',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ],
                ),
              );
            }
          }
        ),
      ),
    );
  }
}









