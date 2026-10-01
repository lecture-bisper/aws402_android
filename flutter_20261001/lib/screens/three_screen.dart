//  File :  three_screen.dart
//  User :  it
//  Date :  2026-10-01
//  Time :  오후 12:31
//  Desc :  

import 'package:flutter/material.dart';

class ThreeScreen extends StatelessWidget {
  const ThreeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    Map<String, Object> args = ModalRoute.of(context)?.settings.arguments as Map<String, Object>;

    return Scaffold(
      appBar: AppBar(
        title: Text('Three Screen'),
      ),
      body: Container(
        color: Colors.yellowAccent,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Three Screen', style: TextStyle(color: Colors.white, fontSize: 30),),
              Text('Two Screen 에서 받은 데이터 : ${args["name"]}, ${args["age"]}'),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/four');
                },
                child: Text('Go Four'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(context, '/four', (route) => true);
                },
                child: Text('pushNamedAndRemoveUntil - true'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(context, '/four', (route) => false);
                },
                child: Text('pushNamedAndRemoveUntil - false'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Pop'),
              ),
            ],
          ),
        ),
      ),
    );
  }

}










