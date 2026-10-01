//  File :  splash_screen.dart
//  User :  it
//  Date :  2026-10-01
//  Time :  오후 3:59
//  Desc :  

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Color(0xFFF99231),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/logo.png', width: 200.0,),
                  CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}


//  문제 1) 계산기 앱을 작성하세요..
//  상단에 연산 결과를 출력하는 화면이 존재
//  하단부에는 연산 시 필요한 숫자 및 연산자를 버튼으로 작성
//  숫자와 연산자를 입력 후 '=' 버튼을 클릭 시 연결 결과가
//  출력되는 프로그램을 작성하세요

//  문제 2) 메모장 앱을 작성하세요
//  화면 상단에 사용자 키보드 입력을 위한 textfield 를 사용하여
//  제목과 내용을 각각 입력 후 확인 버튼을 클릭
//  화면 하단에 메모 내용이 리스트로 출력








