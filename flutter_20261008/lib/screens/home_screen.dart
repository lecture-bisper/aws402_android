//  File :  home_screen.dart
//  User :  it
//  Date :  2026-10-08
//  Time :  오전 9:29
//  Desc :  

import 'package:flutter/material.dart';
import 'package:flutter_20261008/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  final String title;

  const HomeScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blueGrey,
            width: 2.0
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              FilledButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.consumer);
                },
                child: Text('Consumer 사용하기'),
              ),
              SizedBox(height: 8.0,),
              FilledButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.selector);
                },
                child: Text('Selector 사용하기'),
              ),
              SizedBox(height: 8.0,),
              FilledButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.geolocator);
                },
                child: Text('GPS 정보 사용하기'),
              ),
              SizedBox(height: 8.0,),
              FilledButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.imagePicker);
                },
                child: Text('Image Picker 사용하기'),
              ),
              SizedBox(height: 8.0,),
              FilledButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.storage);
                },
                child: Text('내부 저장소 사용하기'),
              ),
              SizedBox(height: 8.0,),
              FilledButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.database);
                },
                child: Text('내부 데이터베이스 사용하기'),
              ),
            ],
          ),
        ),
      ),
    );
  }

}









