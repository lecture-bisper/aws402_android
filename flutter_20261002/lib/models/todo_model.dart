//  File :  todo_model.dart
//  User :  it
//  Date :  2026-10-02
//  Time :  오후 12:30
//  Desc :  

//  모델 클래스 (자바의 DTO 혹은 VO 클래스와 비슷함)
import 'dart:convert';

class TodoModel {
  int id;
  String title;
  bool completed;

  TodoModel({required this.id, required this.title, required this.completed});

  //  네임드 생성자 사용
  // Todo.mapToObj(Map<String, dynamic> jsonData)
  // : id = jsonData['id'],
  // title = jsonData['title'],
  // completed = jsonData['completed'];

  //  팩토리 생성자 사용
  factory TodoModel.mapToObj({required Map<String, dynamic> jsonData}) {
    return TodoModel(
        id: jsonData['id'],
        title: jsonData['title'],
        completed: jsonData['completed']
    );
  }

  factory TodoModel.strToObj({required jsonStr}) {
    Map<String, dynamic> map = jsonDecode(jsonStr);

    return TodoModel(
        id: map["id"],
        title: map["title"],
        completed: map["completed"]
    );
  }

  Map<String, dynamic> objToMap() => {'id': id, 'title': title, 'completed': completed};

  String objToString() => '{"id": $id, "title": $title, "completed": $completed}';
}









