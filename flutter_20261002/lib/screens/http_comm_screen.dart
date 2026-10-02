//  File :  http_comm_screen.dart
//  User :  it
//  Date :  2026-10-02
//  Time :  오후 2:17
//  Desc :  

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpCommScreen extends StatefulWidget {
  const HttpCommScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HttpCommScreenState();
  }
}

class _HttpCommScreenState extends State<HttpCommScreen> {

  String result = '';

  void httpGet() async {
    Map<String, String> headers = {
      'content-type': 'application/json',
      'accept': 'application/json'
    };

    http.Response response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/posts/1'),
      headers: headers
    );

    if (response.statusCode == 200) {
      setState(() {
        result = 'GET Response : ${response.body}';
      });
    }
    else {
      setState(() {
        result = 'Get 방식 통신 중 오류 발생';
      });
    }
  }

  void httpPost() async {
    try {
      http.Response response = await http.post(
        Uri.parse('https://jsonplaceholder.typicode.com/posts'),
        body: {'title': 'hello', 'body': 'world', 'userId': '3'}
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        setState(() {
          result = 'POST Response : ${response.body}';
        });
      }
      else {
        setState(() {
          result = 'POST 방식 통신 중 오류 발생';
        });
      }
    }
    catch (e) {
      print('error : $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('result : $result'),
          SizedBox(height: 8.0,),
          ElevatedButton(
              onPressed: httpGet,
              child: Text('Get 방식'),
          ),
          SizedBox(height: 8.0,),
          ElevatedButton(
              onPressed: httpPost,
              child: Text('Post 방식'),
          ),
        ],
      ),
    );
  }

}









