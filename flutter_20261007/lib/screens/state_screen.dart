//  File :  state_screen.dart
//  User :  it
//  Date :  2026-10-07
//  Time :  오전 9:23
//  Desc :  

import 'package:flutter/material.dart';
import 'package:flutter_20261007/widgets/parent_widget.dart';

//  상태 관리 : 플러터의 상태관리는 기본적으로 리액트의 상태관리와 비슷함
//    상태 관리 3가지
//    1. 위젯 자체의 상태 이용
//      해당 상태 데이터를 해당 위젯에서만 사용, StatefulWidget 으로 만들어서 사용
//    2. 상위 위젯의 상태를 이용
//      부모 위젯에서 상태를 관리하고, 자식 위젯에서는 부모의 상태를 가지고 있는 변수를 자식 위젯의 생성자 매개변수로 받아서 사용 (React 의 Props 객체와 비슷)
//      부모 위젯은 StatefulWidget 을 사용하여 각종 상태를 관리하고, 자식 위젯은 StatelessWidget 을 부모가 관리중인 변수를 상속받아 사용
//    3. 위젯 자체의 상태와 상위 위젯의 상태를 함께 이용


//  조상 위젯의 상태 얻기 : 한번에 여러 단계 위의 조상 위젯의 상태에 접근 시 findAncestorStateOfType() 함수를 사용하여 조상 위젯의 상태를 가져올 수 있음

//  자손 위젯의 상태 얻기 : 여러 단계 아래의 자손 위젯의 상태에 접근 시 GlobalKey를 사용하여 currentState 를 통해서 자손 위젯의 상태를 가져올 수 있음

class StateScreen extends StatelessWidget {
  const StateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('상태 관리'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          // color: Colors.redAccent,
          border: Border.all(
            color: Colors.redAccent,
            width: 2.0
          ),
        ),
        child: ParentWidget(),
      ),
    );
  }
}










