//  File :  database_widget.dart
//  User :  it
//  Date :  2026-10-08
//  Time :  오후 4:11
//  Desc :  

import 'package:flutter/material.dart';
import 'package:flutter_20261008/models/user_model.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseWidget extends StatefulWidget {
  const DatabaseWidget({super.key});

  @override
  State<DatabaseWidget> createState() => _DatabaseWidgetState();
}

class _DatabaseWidgetState extends State<DatabaseWidget> {

  var db;
  int lastId = 0;

  _createTable() async {
    db = await openDatabase(
      'mydb.sqlite',
      version: 1,
      onCreate: (Database db, int version) async {
        await db.execute('''
          CREATE TABLE "user" (
            "id"  INTEGER,
            "name"  TEXT,
            "address" TEXT,
            PRIMARY KEY("id" AUTOINCREMENT)
          )
        ''');
        debugPrint('***** 데이터베이스 생성!! *****');
      },
      onUpgrade: (Database db, int oldVersion, int newVersion) {
        debugPrint('===== 데이터베이스 수정!! =====');
      }
    );
  }

  insert() async {
    lastId++;
    // UserModel user = UserModel.fromData('name$lastId', 'busan$lastId');
    // lastId = await db.insert('user', user.toMap());
    // print('${user.toMap()}');

    dynamic count = await db.rawInsert('''
      INSERT INTO user (name, address)
      values ("테스터 $lastId", "부산 $lastId")
    ''');
    debugPrint('등록된 데이터 수 : $count');
  }

  update() async {
    // UserModel user = UserModel.fromData('name${lastId - 1}', 'busan${lastId - 1}');
    // await db.update('user', user.toMap(), where: 'id=?', whereArgs: [lastId]);
    int count = await db.rawUpdate('''
      UPDATE user
      SET name = "수정 테스터 $lastId", address = "수정주소 부산 $lastId"
      WHERE id = "$lastId"
    ''');
    debugPrint('수정된 데이터 수 : $count');
  }

  delete() async {
    // await db.delete('user', where: 'id=?', whereArgs: [lastId]);
    // lastId--;
    int count = await db.rawDelete('''
      DELETE FROM user
      WHERE id = "$lastId"
    ''');
    lastId--;
  }

  query() async {
    // List<Map> maps = await db.query(
    //   'user',
    //   column: ['id', 'name', 'address'],
    // );
    //
    // List<Map> users = List.empty(growable: true);
    // maps.forEach((ele) {
    //   users.add(UserModel.fromMap(ele as Map<String, Object?>) as Map<dynamic, dynamic>);
    // });
    //
    // if (maps.length > 0) {
    //   print('select : ${maps.first}');
    // }
    // for (var user in users) {
    //   debugPrint('${user["name"]}');
    // }

    dynamic list = await db.rawQuery('''
      SELECT * FROM user
    ''');
    if (list.isNotEmpty) {
      for (var item in list) {
        debugPrint("id : ${item['id']}, name : ${item['name']}, address : ${item['address']}");
      }
    }
    else {
      debugPrint('----- 데이터 없음!! -----');
    }
  }

  @override
  void initState() {
    super.initState();
    _createTable();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigoAccent,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: insert,
              child: Text('insert')
            ),
            SizedBox(height: 8.0,),
            FilledButton(
                onPressed: update,
                child: Text('update')
            ),
            SizedBox(height: 8.0,),
            FilledButton(
                onPressed: delete,
                child: Text('delete')
            ),
            SizedBox(height: 8.0,),
            FilledButton(
                onPressed: query,
                child: Text('query')
            ),
          ],
        ),
      ),
    );
  }

}










