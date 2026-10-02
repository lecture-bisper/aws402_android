//  File :  parse_json.dart
//  User :  it
//  Date :  2026-10-02
//  Time :  오전 11:15
//  Desc :  

import 'dart:convert';

void main() {

  print('\n ----- json 데이터 파싱하기 -----\n');

//   플러터에서 서버와 통신을 위해서 주로 json 문자열로 데이터를 주고 받음

//  dart:convert 패키지를 통해서 json 데이터를 인코딩 혹은 디코딩 하여 사용할 수 있음
//  jsonDecode() : json 문자열을 Dart 의 Map 타입으로 변환 (json.decode() 와 같은 기능)
//  jsonEncode() : Dart 의 Map 타입의 데이터를 json 문자열로 변환 (json.encode() 와 같은 기능)

  String jsonStr = '{"id": 1, "title": "hello", "completed": false}';
  print('변수 jsonStr의 데이터 타입은 : ${jsonStr.runtimeType}');
  print('원본 json 문자열 : $jsonStr');

  print('');

//   사용할 데이터 타입을 사용자가 직접 설정하여 사용
//  value 부분의 데이터 타입을 dynamic 으로 설정하여 모든 데이터 타입이 저장될 수 있도록 함
//   ex > Map<String, dynamic> jsonMap = jsonDecode(jsonStr);
//  타입 설정을 var 키워드를 사용하여 자동 추론하도록 하여도 상관없음
//  ex > var jsonMap = jsonDecode(jsonStr);

  Map<String, dynamic> jsonMap1 = jsonDecode(jsonStr);
  print('변수 jsonMap1 의 데이터 타입 : ${jsonMap1.runtimeType}');
  print('jsonMap1 의 내용 : $jsonMap1');
  print('jsonMap1 의 요소 - id : ${jsonMap1["id"]}, title : ${jsonMap1["title"]}, completed : ${jsonMap1["completed"]}');

  print('');

  var jsonMap2 = jsonDecode(jsonStr);
  print('변수 jsonMap2 의 데이터 타입 : ${jsonMap2.runtimeType}');
  print('jsonMap2 의 내용 : $jsonMap2');
  print('jsonMap2 의 요소 - id : ${jsonMap2["id"]}, title : ${jsonMap2["title"]}, completed : ${jsonMap2["completed"]}');

  print('\n ----- dart 의 Map to json String -----\n');

  Map<String, dynamic> jsonMap3 = {'id': 2, 'title': 'world', 'completed': true};
  print('변수 jsonMap3 의 데이터 타입 : ${jsonMap3.runtimeType}');
  print('jsonMap3 의 내용 : $jsonMap3');
  print('jsonMap3 의 요소 - id : ${jsonMap3["id"]}, title : ${jsonMap3["title"]}, completed : ${jsonMap3["completed"]}');

  print('');

  String jsonStr2 = jsonEncode(jsonMap3);
  print('변수 jsonStr2 의 데이터 타입 : ${jsonStr2.runtimeType}');
  print('jsonStr2 의 내용 : $jsonStr2');

  print('');

  var jsonStr3 = jsonEncode(jsonMap3);
  print('변수 jsonStr3 의 데이터 타입 : ${jsonStr3.runtimeType}');
  print('jsonStr3 의 내용 : $jsonStr3');

  print('\n ----- json 데이터가 리스트로 전달되었을 경우 -----\n');

  String jsonStr4 = '['
      '{"id": 1, "title": "hello", "completed": false},'
      '{"id": 2, "title": "world", "completed": true}'
      ']';

  print('변수 jsonStr4 의 데이터 타입 : ${jsonStr4.runtimeType}');
  print('변수 jsonStr4 의 내용 : $jsonStr4');

  print('');

  List<dynamic> jsonList1 = jsonDecode(jsonStr4);
  var jsonList2 = jsonDecode(jsonStr4);
  print('변수 jsonList1 의 데이터 타입 : ${jsonList1.runtimeType}');
  print('변수 jsonList1 의 내용 : $jsonList1');
  print('변수 jsonList1 의 요소 : index 0 : ${jsonList1[0]["title"]}, index 1 : ${jsonList1[1]["title"]}');
  print('변수 jsonList2 의 데이터 타입 : ${jsonList2.runtimeType}');
  print('변수 jsonList2 의 내용 : $jsonList2');
  print('변수 jsonList2 의 요소 : index 0: ${jsonList2[0]["title"]}, index 1: ${jsonList2[1]["title"]}');


  print('\n ----- 모델 클래스로 json 데이터 사용하기 -----\n');

//  모델 클래스 : jsp, spring 에서 데이터베이스와 데이터를 주고 받기 위해서 사용하는 DTO 혹은 VO 클래스와 비슷한 개념
//  Map 타입 사용 시 여러가지 데이터를 저장하기 위해서 Map<String, dynamic> 형식을 사용했으나,  각 데이터에 맞는 정확한 데이터 타입으로 프로그래밍을 할 수 없음
//  데이터를 저장하기 위한 모델 클래스를 만들어서 json 데이터로 사용 시 정확한 데이터 타입으로 프로그래밍이 가능

  Map<String, dynamic> jsonMap4 = jsonDecode(jsonStr);
  print('변수 jsonMap4 의 데이터 타입 : ${jsonMap4.runtimeType}');
  print('jsonMap4 의 데이터 내용 : $jsonMap4');

  print('');

  //  Map 타입의 데이터를 Todo 클래스 타입의 객체로 변환
  Todo todo = Todo.mapToObj(jsonData: jsonMap4);
  print('todo 의 데이터 타입 : ${todo.runtimeType}');
  print('todo 의 내용 - todo.id : ${todo.id}, todo.title : ${todo.title}, todo.completed : ${todo.completed}');

  print('');
  Map<String, dynamic> jsonMap5 = todo.objToMap();
  print('jsonMap5 의 데이터 타입 : ${jsonMap5.runtimeType}');
  print('jsonMap5 의 내용 : $jsonMap5');

}


//  모델 클래스 (자바의 DTO 혹은 VO 클래스와 비슷함)
class Todo {
  int id;
  String title;
  bool completed;

  Todo({required this.id, required this.title, required this.completed});

  //  네임드 생성자 사용
  // Todo.mapToObj(Map<String, dynamic> jsonData)
  // : id = jsonData['id'],
  // title = jsonData['title'],
  // completed = jsonData['completed'];

  //  팩토리 생성자 사용
  factory Todo.mapToObj({required Map<String, dynamic> jsonData}) {
    return Todo(
      id: jsonData['id'],
      title: jsonData['title'],
      completed: jsonData['completed']
    );
  }

  factory Todo.strToObj({required jsonStr}) {
    Map<String, dynamic> map = jsonDecode(jsonStr);

    return Todo(
      id: map["id"],
      title: map["title"],
      completed: map["completed"]
    );
  }

  Map<String, dynamic> objToMap() => {'id': id, 'title': title, 'completed': completed};

  String objToString() => '{"id": $id, "title": $title, "completed": $completed}';
}





