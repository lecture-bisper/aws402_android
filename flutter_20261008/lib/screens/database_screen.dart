//  File :  database_screen.dart
//  User :  it
//  Date :  2026-10-08
//  Time :  오후 3:53
//  Desc :  

import 'package:flutter/material.dart';
import 'package:flutter_20261008/widgets/database_widget.dart';

//  내부 데이터베이스 : 디바이스에서 여러가지 데이터를 입출력 시 데이터베이스를 사용할 수 있음
//    데이터베이스는 파일 데이터베이스인 SQLite를 사용함
//    SQLite를 사용하기 위한 플러터 패키지가 sqflite 임(설치 필요)

//  데이터베이스 사용
//  var db = await openDatabase(데이터베이스명);
//    version : 데이터베이스의 버전, 사용자가 버전 정보를 변경할 수 있음
//    onCreate : 앱이 설치되고 첫 실행 시 데이터베이스가 생성될 때 동작함
//      익명함수 (Database db, int version) async {}
//    onUpgrade : 데이터베이스의 버전 정보가 변경되었을 경우 동작
//      익명함수 (Database db, int oldVersion, int newVersion) async {}

//  쿼리 실행
//  execute() : 매개변수로 SQL 쿼리문을 입력하여 사용, 반환값은 없음, 주로 테이블을 다룰 때 사용
//  rawQuery() : 매개변수로 SELECT 쿼리문을 입력하여 사용
//    반환 타입이 Future<List<Map<String, Object?>>>
//  rawInsert() : 매개변수로 INSERT 쿼리문을 입력하여 사용, 반환값은 Future<int>으로 등록한 수
//  rawUpdate() : 매개변수로 UPDATE 쿼리문을 입력하여 사용, 반환값은 Future<int>으로 수정한 수
//  rawDelete() : 매개변수로 DELETE 쿼리문을 입력하여 사용, 반환값은 Future<int>으로 삭제한 수

//  쿼리문 입력없이 테이블명과 데이터를 통해서 데이터베이스를 사용하는 함수
//  첫번째 매개변수로 테이블명을 입력
//  두번째 매개변수로 Map 타입의 데이터를 사용
//  query() : SELECT 문으로 사용
//  insert() : INSERT 문으로 사용
//  update() : UPDATE 문으로 사용
//  delete() : DELETE 문으로 사용

class DatabaseScreen extends StatelessWidget {
  final String title;
  const DatabaseScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: DatabaseWidget(),
    );
  }
}










