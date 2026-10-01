//  File :  tab_bar_widget.dart
//  User :  it
//  Date :  2026-09-30
//  Time :  오후 12:39
//  Desc :  

import 'package:flutter/material.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({super.key});

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> with SingleTickerProviderStateMixin {

  //  late : 지연 저장, 실제 코드가 동작하면서 필요한 데이터를 필요한 순간에 저장하여 사용한다는 키워드
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBar 테스트"),
        bottom: TabBar(
          controller: tabController,
          tabs: [
            Tab(text: 'One',),
            Tab(text: 'Two',),
            Tab(text: 'Three',)
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          Center(
            child: Text(
              'one Screen',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Center(
            child: Text(
              'two Screen',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Center(
            child: Text(
              'three Screen',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
        ],
      ),
    );
  }

}









