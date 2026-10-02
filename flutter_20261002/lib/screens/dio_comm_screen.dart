//  File :  dio_comm_screen.dart
//  User :  it
//  Date :  2026-10-02
//  Time :  오후 3:17
//  Desc :  


import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioCommScreen extends StatefulWidget {
  const DioCommScreen({super.key});

  @override
  State<StatefulWidget> createState() => _DioCommScreenState();
}

class _DioCommScreenState extends State<DioCommScreen> {
  String result = '';

  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://jsonplaceholder.typicode.com',
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 3),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/jos'
      }
    )
  );

  @override
  void dispose() {
    dio.close();
    super.dispose();
  }

  void dioGet() async {
    try {
      Response res = await dio.get('/posts/5');

      if (res.statusCode == 200 || res.statusCode == 201) {
        var data = res.data;
        setState(() {
          result = 'get() 결과 - \nid : ${data["id"]}, \nuserId : ${data["userId"]}, \ntitle : ${data["title"]}, \nbody : ${data["body"]}';
        });
      }
    }
    catch (e, s) {
      print('오류 발생 : $e');
      print('오류 위치 : $s');
    }
  }

  void dioPost() async {
    try {
      Response res = await dio.post(
        '/posts',
        data: {'title': 'hello', 'body': 'world', 'userId': '5'}
      );

      if (res.statusCode == 200 || res.statusCode == 201) {
        var data = res.data;
        setState(() {
          result = 'post() 결과 -\nid: ${data["id"]}, \nuserId: ${data["userId"]}, \ntitle: ${data["title"]}, \nbody: ${data["body"]}';
        });
      }
    }
    catch (e, s) {
      print('오류 발생 : $e');
      print('오류 위치 : $s');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(result),
          SizedBox(height: 8.0,),
          ElevatedButton(
            onPressed: dioGet,
            child: Text('Get 방식'),
          ),
          SizedBox(height: 8.0,),
          ElevatedButton(
            onPressed: dioPost,
            child: Text('Post 방식'),
          ),
        ],
      ),
    );
  }

}









