//  File :  list_widget.dart
//  User :  it
//  Date :  2026-09-30
//  Time :  오전 9:23
//  Desc :  

import 'package:flutter/material.dart';

import '../models/user.dart';

//  ListView : 여러 위젯을 가로나 세로로 나열하면서 화면을 벗어날 때 스크롤 기능을 지원하고자할 경우 사용
//    동일한 형태의 위젯을 여러개 나열하여 출력 시 사용

//  scrollDirection 속성을 사용하여 스크롤 방향을 변경할 수 있음(Axis.horizontal, Axis.vertical)

//  ListView.builder() : ListView 의 자식 위젯을 특정 내용까지만 출력하고, 스크롤 이동으로 인하여 필요할 경우 추가로 로딩하여 사용하는 방식
//    itemCount : 리스트뷰에 출력할 항목의 수
//    itemBuilder : 리스트뷰에 출력할 위젯을 만드는 함수

//  ListView.separated() : ListView 의 자식 위젯을 출력 시 각각의 위젯을 구분자를 표시
//    separatorBuilder 속성을 추가하여 사용할 구분자를 지정해야 함

//  ListTile : ListView 의 자식 위젯의 내용을 title, subtitle, leading, trailing 등으로 구분하여 ListView 요소를 꾸밀 수 있음
//    itemBuilder 속성 안에 사용

class ListWidget extends StatelessWidget {
  ListWidget({super.key});

  List<User> users = [
    User(name: '지수', phone: '01012345678', email: 'jisu@bitc.ac.kr'),
    User(name: '제니', phone: '01023456789', email: 'jeny@bitc.ac.kr'),
    User(name: '로제', phone: '01034567890', email: 'roje@bitc.ac.kr'),
    User(name: '리사', phone: '01045678901', email: 'lisa@bitc.ac.kr'),
    User(name: '원이', phone: '01056789012', email: 'wone@bitc.ac.kr'),
    User(name: '리브', phone: '01067890124', email: 'live@bitc.ac.kr'),
    User(name: '미나미', phone: '01078901234', email: 'minami@bitc.ac.kr'),
    User(name: '메이', phone: '01089012345', email: 'may@bitc.ac.kr'),
    User(name: '제나', phone: '01090123456', email: 'jena@bitc.ac.kr'),
    User(name: '아이유', phone: '01001234567', email: 'iu@bitc.ac.kr'),
  ];

  List<String> citys = ['서울시', '인천시', '부산시', '대구시', '대전시', '울산시', '세종시', '경주시', '밀양시', '거제시', '목포시', '제주시'];

  @override
  Widget build(BuildContext context) {
    // return ListView(
    //   scrollDirection: Axis.horizontal,
    //   children: [
    //     Container(width: 300, color: Colors.redAccent,),
    //     Container(width: 300, color: Colors.greenAccent,),
    //     Container(width: 300, color: Colors.blueAccent,),
    //   ],
    // );

    // return ListView.builder(
    //   itemCount: citys.length,
    //   itemBuilder: (context, index) {
    //     return Container(
    //       padding: EdgeInsets.only(left: 10, top: 10),
    //       height: 100,
    //       child: Text(citys[index]),
    //     );
    //   },
    // );

    // return ListView.separated(
    //     itemCount: citys.length,
    //     itemBuilder: (context, index) {
    //       return Container(
    //         padding: EdgeInsets.only(left: 10, top: 10),
    //         height: 100,
    //         child: Text(citys[index]),
    //       );
    //     },
    //     separatorBuilder: (context, index) {
    //       return Divider(height: 2, color: Colors.black,);
    //     }
    // );

    return ListView.separated(
      itemCount: users.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/images/big.jpeg'),
          ),
          title: Text(users[index].name),
          subtitle: Text(users[index].phone),
          trailing: Icon(Icons.more_vert),
          onTap: () {
            debugPrint(users[index].name);
          },
        );
      },
      separatorBuilder: (context, index) {
        return Divider(height: 2, color: Colors.black,);
      },
    );
  }

}









