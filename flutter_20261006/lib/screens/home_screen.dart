//  File :  home_screen.dart
//  User :  it
//  Date :  2026-10-06
//  Time :  오전 9:46
//  Desc :  

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/test1');
                },
                child: Text('스프링부트 서버와 통신')
              ),
              SizedBox(height: 8.0,),
              FilledButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/future');
                },
                child: Text('Future 사용'),
              ),
              SizedBox(height: 8.0,),
              FilledButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/asyncAwait');
                },
                child: Text('async await 사용'),
              ),
              SizedBox(height: 8.0,),
              FilledButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/stream');
                },
                child: Text('Stream 사용'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}










