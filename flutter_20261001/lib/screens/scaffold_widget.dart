//  File :  scaffold_widget.dart
//  User :  it
//  Date :  2026-10-01
//  Time :  오전 11:38
//  Desc :

import 'package:flutter/material.dart';

class ScaffoldWidget extends StatefulWidget {
  const ScaffoldWidget({super.key});

  @override
  State<ScaffoldWidget> createState() => _ScaffoldWidgetState();
}

class _ScaffoldWidgetState extends State<ScaffoldWidget> {
  int _selectedIndex = 0;

  //  하단 네비게이션 버튼의 클릭 이벤트처리 함수
  void _onItemTapped(int index) {
    // setState() 를 사용하여 값을 변경하고, 화면을 다시 그림
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(48.0),
          child: Container(
            height: 48,
            alignment: Alignment.center,
            child: Text('앱바 하단 텍스트', style: TextStyle(color: Colors.white)),
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/big.jpeg'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        title: Text('AppBar 제목'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add_alert)),
          IconButton(onPressed: () {}, icon: Icon(Icons.phone)),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text('버튼', style: TextStyle(fontSize: 24)),
            ),
            Checkbox(value: true, onChanged: (value) {}),
            Text('문자열', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
      // 화면 하단의 네비게이션 바
      bottomNavigationBar: BottomNavigationBar(
        //  fixed 로 사용 시 하단 네비게이션 버튼을 클릭하면 배경색이 그대로 유지, shifting 을 사용 시 클릭한 BottomNavigationBarItem 에 설정한 배경색으로 변경됨
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex,
        //  클릭한 하단 네비게이션 아이템의 색상 설정
        selectedItemColor: Colors.black,
        //  하단 네비게이션 버튼 클릭 이벤트
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "홈 메뉴",
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: "두번째 메뉴",
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule),
            label: "세번째 메뉴",
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: "네번째 메뉴",
            backgroundColor: Colors.pink,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      //  화면 가장자리에서 출력되는 메뉴
      //  설정 시 앱바의 왼쪽 상단에 메뉴 버튼이 추가됨
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            //  드로어 메뉴의 상단 부분
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueAccent),
              child: Text('드로어 헤더'),
            ),
            //  드로어 메뉴의 아이템 설정
            ListTile(title: Text('아이템 1'), onTap: () {}),
            ListTile(title: Text('아이템 2'), onTap: () {}),
          ],
        ),
      ),
    );
  }
}
