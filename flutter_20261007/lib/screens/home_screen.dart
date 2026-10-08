//  File :  home_screen.dart
//  User :  it
//  Date :  2026-10-07
//  Time :  오전 9:15
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
      body: Padding(
        padding: EdgeInsets.all(16.0,),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              FilledButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/state');
                },
                child: Text('상위 위젯에서 상태 관리하기'),
              ),
              SizedBox(height: 8.0,),
              FilledButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/inherited');
                },
                child: Text('Inherited Widget')
              ),
              SizedBox(height: 8.0,),
              FilledButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/provider');
                },
                child: Text('Provider 로 상태 관리'),
              ),
              SizedBox(height: 8.0,),
              FilledButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/changeNotifierProvider');
                },
                child: Text('ChangeNotifierProvider 로 상태 변경 확인'),
              ),
              SizedBox(height: 8.0,),
              FilledButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/multiProvider');
                },
                child: Text('MultiProvider 로 여러개의 Provider 등록'),
              ),
              SizedBox(height: 8.0,),
              FilledButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/futureStreamProvider');
                },
                child: Text('Future/Stream Provider 로 미래 데이터 받기'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}









