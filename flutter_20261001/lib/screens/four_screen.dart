//  File :  four_screen.dart
//  User :  it
//  Date :  2026-10-01
//  Time :  오후 12:37
//  Desc :  

import 'package:flutter/material.dart';

class FourScreen extends StatelessWidget {
  const FourScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Four Screen'),
      ),
      body: Container(
        color: Colors.cyan,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Four Screen', style: TextStyle(color: Colors.white, fontSize: 30),),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('POP'),
              ),
              ElevatedButton(
                onPressed: () {
                  if (Navigator.canPop(context)) {
                    Navigator.pop(context);
                  }
                  else {
                    debugPrint('마지막 페이지 입니다.');
                  }
                },
                child: Text('canPop'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.popUntil(context, ModalRoute.withName('/two'));
                },
                child: Text('popUntil'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}










