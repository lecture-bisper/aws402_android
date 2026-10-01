//  File :  sliver_app_bar_widget.dart
//  User :  it
//  Date :  2026-10-01
//  Time :  오전 11:22
//  Desc :  

import 'package:flutter/material.dart';

class SliverAppBarWidget extends StatefulWidget {
  const SliverAppBarWidget({super.key});

  @override
  State<SliverAppBarWidget> createState() => _SliverAppBarWidgetState();
}

class _SliverAppBarWidgetState extends State<SliverAppBarWidget> {

  List<Widget> getWidgets() {
    List<Widget> widgets = [];

    for (var i = 0; i < 100; i++) {
      widgets.add(ListTile(
        title: Text('커스텀 아이템 $i'),
      ));
    }

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  스크롤 시 다른 영역도 함께 스크롤하기 위해서 CustomScrollView 사용
      //  CustomScrollView와 함께 스크롤이 가능하려면 하위 위젯에서 정보를 공유해야하며, 해당 기능을 가지고 있는 위젯은 SliverList, SliverFixedExtentList, SliverGrid, SliverAppBar 등이 있음
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
              onPressed: (){},
              icon: Icon(Icons.expand),
            ),
            // 슬리버 앱바의 스크롤 크기 설정
            expandedHeight: 200,
            // 슬리버 앱바가 컨텐츠의 스크롤과 동시에 움직일지, 컨텐츠의 최상단 부분이 움직일때 움직일지 여부 설정
            floating: true,
            // 슬리버 앱바가 사라질 때 완전히 숨길지 여부 설정
            pinned: true,
            // 슬리버 앱바가 스크롤 될 경우 한번에 끝까지 스크롤 될지 중간에 멈출지 여부 설정
            snap: true,
            elevation: 50,
            backgroundColor: Colors.pink,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/big.jpeg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            title: Text('앱바 제목'),
            actions: [
              IconButton(
                onPressed: (){},
                icon: const Icon(Icons.add_alert),
              ),
              IconButton(
                onPressed: (){},
                icon: const Icon(Icons.phone),
              ),
            ],
          ),
          SliverFixedExtentList(
            delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
              return ListTile(
                title: Text('슬리버 앱바 사용 시 내용 $index'),
              );
            }),
            itemExtent: 50.0
          ),
        ],
      ),
    );
  }

}









