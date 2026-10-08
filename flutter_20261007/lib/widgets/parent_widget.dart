//  File :  parent_widget.dart
//  User :  it
//  Date :  2026-10-07
//  Time :  오전 9:43
//  Desc :  


import 'package:flutter/material.dart';
import 'package:flutter_20261007/widgets/child_widget.dart';
import 'package:flutter_20261007/widgets/middle_widget.dart';

import 'content_widget.dart';
import 'icon_widget.dart';

//  부모 위젯으로 사용되는 ParentWidget, 상태가 변경되기 때문에 StatefulWidget 을 사용
class ParentWidget extends StatefulWidget {
  const ParentWidget({super.key});

  @override
  State<ParentWidget> createState() => ParentWidgetState();
}

class ParentWidgetState extends State<ParentWidget> {
  // 현재 상태 값을 가지고 있는 변수
  bool favorited = false;
  int favoriteCount = 10;

  //  자손 위젯의 상태 데이터를 가져오기 위해서 GlobalKey 설정
  //  가져올 자손 위젯의 상태 클래스 타입으로 설정
  GlobalKey<ChildWidgetState> childKey = GlobalKey<ChildWidgetState>();
  //  자손 위젯의 상태 데이터를 저장할 변수
  int childCount = 0;

  void toggleFavorite() {
    //  setState() 함수를 사용하여 상태 값을 변경
    setState(() {
      if (favorited) {
        favoriteCount -= 1;
        favorited = false;
      }
      else {
        favoriteCount += 1;
        favorited = true;
      }
    });
  }

  void getChildData() {
    //  GlobalKey 를 통해서 가져온 자손 위젯의 정보를 가져옴
    //  사용 시 자손 위젯의 상태가 없을 수 있으므로 반드시 타입에 ? 를 사용해야 함
    ChildWidgetState? childState = childKey.currentState;
    setState(() {
      //  currentState 를 통해서 가져온 상태 정보로 자손 위젯의 상태 변수의 값을 가져옴
      //  조상 위젯이 가지고 있는 상태 변수에 저장
      childCount = childState?.childCount ?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blueAccent,
          width: 2.0
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'favorited : $favorited,\nfavoriteCount : $favoriteCount',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Parent Widget\nchild count : $childCount',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(width: 8.0,),
              ElevatedButton(
                onPressed: getChildData,
                child: Text('get child data'),
              ),
            ],
          ),
          SizedBox(height: 8.0,),
          //  자식 위젯 IconWidget 을 호출
          //  IconWidget 의 생성자에 매개변수로 현재 ParentWidget 의 상태 데이터인 favorited 와 상태 데이터를 변경하기 위한 함수 toggleFavorite() 를 전달
          IconWidget(favorited: favorited, onChanged: toggleFavorite),
          SizedBox(height: 8.0,),
          MiddleWidget(childKey: childKey),
          SizedBox(height: 8.0,),
          //  자식 위젯 ContentWidget 을 호출
          //  ContentWidget 의 생성자에 매개변수로 현재 ParentWidget 의 상태 데이터 중 하나인 favoriteCount 를 전달
          ContentWidget(favoriteCount: favoriteCount),
        ],
      ),
    );
  }

}










