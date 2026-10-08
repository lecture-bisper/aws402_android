//  File :  storage_screen.dart
//  User :  it
//  Date :  2026-10-08
//  Time :  오후 2:54
//  Desc :  

import 'package:flutter/material.dart';
import 'package:flutter_20261008/widgets/storage_widget.dart';

//  shared_preferences : 플러터에서 제공하는 내부 저장소 패키지(설치 필요)
//    데이터를 키:값 형태로 저장하는 방식
//    저장할 수 있는 데이터 타입은 int, double, bool, String, List<String>
//    각 데이터 타입을 저장하는 setInt(), setDouble(), setBool(), setString, setStringList() 가 있음
//      첫번째 매개변수는 key 로 사용, 두번째 매개변수는 값으로 사용
//    각 데이터 타입의 데이터를 가져올 경우 getInt(), getBool(), getString(), getStringList() 가 있음
//      매개변수로 key 이름을 입력, key 에 해당하는 데이터가 없을 경우 null 을 반환
//      데이터를 가져올 경우 ?? 를 사용하여 기본값을 설정하는 것이 좋음

//  내부 저장소를 사용하기 위한 SharedPreferences 객체 얻기
//  SharedPreferences prefs = await SharedPreferences.getInstance();


class StorageScreen extends StatelessWidget {
  final String title;

  const StorageScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: StorageWidget(),
    );
  }
}









