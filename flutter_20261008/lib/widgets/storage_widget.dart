//  File :  storage_widget.dart
//  User :  it
//  Date :  2026-10-08
//  Time :  오후 3:10
//  Desc :  

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageWidget extends StatefulWidget {
  const StorageWidget({super.key});

  @override
  State<StorageWidget> createState() => _StorageWidgetState();
}

class _StorageWidgetState extends State<StorageWidget> {

  //  내부 저장소를 사용하기 위한 SharedPreferences 클래스 타입의 객체 생성
  //  late : 지연 사용, 해당 변수가 프로그램 상에서 실제로 사용되는 시점에 변수를 초기화함
  late SharedPreferences prefs;

  double sliderValue = 0.0;
  bool switchValue = false;

  Future<void> _save() async {
    //  double 타입의 데이터 저장
    await prefs.setDouble('slider', sliderValue);
    //  bool 타입의 데이터 저장
    await prefs.setBool('switch', switchValue);
  }

  Future<void> getInitData() async {
    //  SharedPreferences 클래스 타입의 객체 생성, 싱글톤 패턴으로 앱 전체에서 객체를 단 1개만 생성 후 공유
    prefs = await SharedPreferences.getInstance();
    //  저장된 데이터 가져오기, 없으면 기본값 사용
    sliderValue = prefs.getDouble('slider') ?? 0.0;
    switchValue = prefs.getBool('switch') ?? false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getInitData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Slider(
              value: sliderValue,
              min: 0,
              max: 10,
              onChanged: (double value) {
                setState(() => sliderValue = value );
              }
            ),
            SizedBox(height: 8.0,),
            Switch(
              value: switchValue,
              onChanged: (bool value) {
                setState(() => switchValue = value);
              }
            ),
            SizedBox(height: 8.0,),
            FilledButton(
              onPressed: _save,
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}









