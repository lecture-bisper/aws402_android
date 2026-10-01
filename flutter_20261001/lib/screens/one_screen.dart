//  File :  one_screen.dart
//  User :  it
//  Date :  2026-10-01
//  Time :  오후 12:10
//  Desc :  

import 'package:flutter/material.dart';

import '../models/user.dart';

class OneScreen extends StatelessWidget {
  const OneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('One Screen'),
      ),
      body: Container(
        color: Colors.red,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('One Screen', style: TextStyle(color: Colors.white, fontSize: 30),),
              ElevatedButton(
                // onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => TwoScreen()));
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => TwoScreen("안녕하세요")));
                  // Navigator.pushNamed(context, '/two');
                // },
                onPressed: () async {
                  //  하나의 데이터 전달 시
                  // Navigator.pushNamed(context, '/two', arguments: 100);
                  //  여러개의 데이터 전달 시
                  // Navigator.pushNamed(
                  //   context,
                  //   '/two',
                  //   arguments: {
                  //     'name': '아이유',
                  //     'age' : 33,
                  //     'job' : '가수',
                  //   }
                  // );
                  // Navigator.pushNamed(
                  //     context,
                  //     '/two',
                  //     arguments: User(name: '아이유', address: '서울')
                  // );

                  //  async, await 키워드를 사용한 비동기 프로그래밍 방식을 사용하여 pop() 을 통해서 전달한 데이터를 가져옴
                  //  pushNamed() 의 결과를 전달받아 변수에 저장
                  final result = await Navigator.pushNamed(
                    context,
                    '/two',
                    arguments: {
                      'arg1': 10,
                      'arg2': 'hello',
                      'arg3': User(name: 'kkang', address: 'seoul')
                    }
                  );
                  //  pop() 으로 전달받은 데이터가 User 클래스 타입인지 확인 후 사용
                  debugPrint('result : ${(result as User).name}, ${(result as User).address}');
                },
                child: Text('go Two Screen')
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text('pop')
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
            ],
          ),
        ),
      ),
    );
  }


}










