//  File :  cupertino_widget.dart
//  User :  it
//  Date :  2026-10-01
//  Time :  오전 9:39
//  Desc :  

import 'package:flutter/cupertino.dart';

class CupertinoWidget extends StatelessWidget {
  const CupertinoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    //  IOS 의 쿠퍼티노 디자인을 사용
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        brightness: Brightness.light
      ),
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('쿠퍼티노 디자인 사용'),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoButton(
              onPressed: (){},
              child: Text('클릭!!', style: TextStyle(fontSize: 24),),
            ),
            Center(
              child: Text('안녕하세요!!'),
            ),
          ],
        ),
      ),
    );
  }
}









