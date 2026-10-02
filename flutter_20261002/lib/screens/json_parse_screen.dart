//  File :  json_parse_screen.dart
//  User :  it
//  Date :  2026-10-02
//  Time :  오전 10:48
//  Desc :  

import 'dart:convert';

import 'package:flutter/material.dart';

import '../models/todo_model.dart';

class JsonParseScreen extends StatefulWidget {
  const JsonParseScreen({super.key});

  @override
  State<JsonParseScreen> createState() => _JsonParseScreenState();
}

class _JsonParseScreenState extends State<JsonParseScreen> {

  // json 타입 문자열
    String jsonStr = '{"id": 1, "title": "hello", "completed": false}';
    TodoModel? _todo;
    String result = '';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            result,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0,),
          ElevatedButton(
            onPressed: (){
              Map<String, dynamic> map = json.decode(jsonStr);
              _todo = TodoModel.mapToObj(jsonData: map);

              setState(() {
                // result = 'decode - id: ${map["id"]}, title: ${map["title"]}, completed: ${map["completed"]}';
                result = 'decode - id: ${_todo?.id}, title: ${_todo?.title}, completed: ${_todo?.completed}';
              });
            },
            child: Text('Decode 실행'),
          ),
          SizedBox(height: 8.0,),
          ElevatedButton(
            onPressed: (){
              setState(() {
                var map = _todo?.objToMap();
                result = 'encode - ${jsonEncode(map)}';
              });
            },
            child: Text('Encode 실행'),
          ),
        ],
      ),
    );
  }

}









