//  File :  test1_screen.dart
//  User :  it
//  Date :  2026-10-06
//  Time :  오전 9:51
//  Desc :  

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Test1Screen extends StatefulWidget {
  const Test1Screen({super.key});

  @override
  State<Test1Screen> createState() => _Test1ScreenState();
}

class _Test1ScreenState extends State<Test1Screen> {

  String result = '';

  final dio = Dio(
    BaseOptions(
      baseUrl: 'http://10.100.204.150:8080',
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 3),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
        HttpHeaders.acceptHeader: 'application/json'
      },
    )
  );

  void dioGet() async {
    try {
      Response res = await dio.get('/api/test1?num1=10&num2=20');

      // if (res.statusCode == 200 || res.statusCode == 201) {
        var data = res.data;
        setState(() {
          result = 'get 결과 : - \nnum1 : ${data["num1"]}\nnum2 : ${data["num2"]}\nresult : ${data["result"]}';
          debugPrint('get 결과 : - \nnum1 : ${data["num1"]}\nnum2 : ${data["num2"]}\nresult : ${data["result"]}');
        });
      // }
    }
    catch (e, s) {
      debugPrint('오류 발생 : $e');
      debugPrint('오류 위치 : $s');
    }
  }

  void dioPost() async {
    try {
      Response res = await dio.post('/api/test2', data: {'num1': 10, 'num2': 20});

      var data = res.data;
      setState(() {
        result = 'post 결과 : -\nnum1 : ${data["num1"]}\nnum2 : ${data["num2"]}\n result : ${data["result"]}';
        debugPrint('post 결과 : -\nnum1 : ${data["num1"]}\nnum2 : ${data["num2"]}\n result : ${data["result"]}');
      });
    }
    catch (e, s){
      debugPrint('오류 발생 : $e');
      debugPrint('오류 위치 : $s');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FilledButton(onPressed: dioGet,
                  child: Text('Get방식'),
                ),
                FilledButton(onPressed: dioPost,
                  child: Text('Post방식'),
                ),
              ],
            ),
            Divider(),
            Text(result),
          ],
        ),
    );
  }

}

//  문제 1) 네이게이션을 사용하여 화면 2를 만들고, HomeScreen 에서 버튼 클릭 시 화면 2로 이동하고, 화면 2에서 서버와 통신하는 게시판 앱을 작성하세요
//  화면2 : 게시물 목록 페이지
//  화면3 : 게시판 글쓰기 페이지









