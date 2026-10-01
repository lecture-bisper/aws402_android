//  File :  two_screen.dart
//  User :  it
//  Date :  2026-10-01
//  Time :  오후 12:17
//  Desc :  

import 'package:flutter/material.dart';
import 'package:flutter_20261001/screens/three_screen.dart';

import '../models/user.dart';

class TwoScreen extends StatelessWidget {
  const TwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //  페이지 전환 시 전달받은 데이터 가져오기
    // int arg = ModalRoute.of(context)?.settings.arguments as int;
    // User iu = ModalRoute.of(context)?.settings.arguments as User;
    //  페이지 전환 시 전달받은 여러개의 데이터 가져오기
    Map<String, Object> args = ModalRoute.of(context)?.settings.arguments as Map<String, Object>;

    return Scaffold(
      appBar: AppBar(
        title: Text('Two Screen'),
      ),
      body: Container(
        color: Colors.green,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Two Screen', style: TextStyle(color: Colors.white, fontSize: 30),),
              // Text('전달받은 데이터 : $arg'),
              // Text('전달받은 데이터 : ${args["name"]}, ${args["age"]}, ${args["job"]}'),
              // Text('전달받은 데이터 : ${iu.name}, ${iu.address}'),
              Text('sendData: ${args["arg1"]}, ${args["arg2"]}, ${(args["arg3"] as User).name}'),
              ElevatedButton(
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => ThreeScreen()));
                  Navigator.pushNamed(context, '/three');
                },
                child: Text('go Three'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/three', arguments: {'name': '아이유', 'age': 33});
                },
                child: Text('go Three args')
              ),
              ElevatedButton(
                onPressed: () {
                  //  이전 페이지로 이동
                  // Navigator.pop(context);
                  //  이전 페이지로 이동 시 데이터 전달하기
                  //  pop() 의 두번째 매개변수에 데이터를 입력하여 전달
                  Navigator.pop(context, User(name: 'kim', address: 'busan'));
                },
                child: Text('Pop'),
              ),
              ElevatedButton(
                onPressed: (){
                  if (Navigator.canPop(context)){
                    Navigator.pop(context);
                  }
                  else {
                    debugPrint('마지막 페이지!!');
                  }
                },
                child: Text('canPop'),
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.maybePop(context);
                },
                child: Text('maybePop'),
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushReplacementNamed(context, '/three');
                },
                child: Text('pushReplacementNamed'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}









