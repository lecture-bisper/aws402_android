import 'package:flutter/material.dart';

//  main.dart 파일이 flutter 앱의 실행 파일
void main() {
  //  위젯(widget) : 플러터 앱의 화면에 출력되는 뷰를 의미함
  //    화면에 관련된 모든 것이 위젯임
  //    플러터 앱은 기본 위젯과 사용자가 작성하는 위젯을 조합하여 화면을 구현

  //  실제 플러터 앱을 실행하는 함수
  runApp(
    //  MaterialApp : 구글의 안드로이드 디자인 가이드인 머티리얼 디자인을 사용하는 위젯
    MaterialApp(
      //  Scaffold : 화면 구조를 설계하는 위젯
      home: Scaffold(
        //  appBar: 화면 위쪽의 앱바 위젯
        appBar: AppBar(
          title: Text('First Flutter App'),
        ),
        //  body: 앱의 화면 본체 위젯
        //  모든 위젯은 child 혹은 children 속성 중 하나를 가지고 있음 (둘다 가질 수는 없음)
        //  child: 자식 위젯을 1개만 가질 수 있는 속성
        //  children: 자식 위젯을 여러가 가질 수 있는 속성, 리스트로 받음
        //  Center : 화면 중앙 정렬 위젯, html의 div와 비슷한 기능의 위젯, UI 자체는 없음


        //  child 속성을 사용하여 하나의 자식 위젯을 화면에 출력
        // body: Center(
        //   //  GestureDetector: 사용자 이벤트 처리 위젯
        //   child: GestureDetector(
        //     //  Text: UI 에 텍스트를 표시하는 위젯, html의 label과 비슷한 기능의 위젯
        //     child: Text(
        //       '안녕하세요. Aws 402',
        //       //  TextStyle: 텍스트를 꾸미는 위젯, css 의 역할
        //       style: TextStyle(
        //         color: Colors.blue,
        //         fontSize: 24.0,
        //         fontWeight: FontWeight.w700,
        //       ),
        //     ),
        //   ),
        // ),

        //  children 속성을 사용하여 여러개의 자식 위젯을 화면에 출력

        //  SizedBox: 화면 UI는 존재하지 않고, 공간을 설정하는 위젯, html의 div와 같은 역할, 원하는 크기로 설정 가능
        body: SizedBox(
          width: double.infinity,
          // Column: 세로로 칸을 생성하는 위젯
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('안녕하세요. AWS 402'),
              Text('children 을 통해서'),
              Text('여러개의 자식 위젯을 가질 수 있음'),
            ],
          ),
        ),


        //  플러터의 기본 화면 위젯
        //  개발자가 만드는 위젯은 아래의 3가지 위젯 클래스 중 하나를 상속받아 작성해야 함

        //  StatelessWidget : 상태를 관리하지 않는 정적인 위젯
        //    화면에 업데이트되는 데이터와 연결할 수 없음
        //    처음 생성할 때의 정보로만 화면을 구성

        //  StatefulWidget : 상태를 관리하는 동적인 위젯
        //    화면에 업데이트되는 데이터와 연결할 수 있음
        //    화면이 동적으로 업데이트되는 화면을 구성

        //  InheritedWidget : 여러 위젯에서 공통으로 이용할 상태 관리 위젯


        // body: Center(
        //   child: GestureDetector(
        //     onTap: () {
        //       print('한번 탭 하기');
        //     },
        //     onDoubleTap: () {
        //       print('빠르게 2번 탭 하기');
        //     },
        //     onVerticalDragStart: (details) {
        //       print('상하 스크롤 시작');
        //     },
        //     onVerticalDragEnd: (details) {
        //       print('상하 스크롤 끝');
        //     },
        //     onHorizontalDragStart: (details) {
        //       print('좌우 스크롤 시작');
        //     },
        //     onHorizontalDragEnd: (details) {
        //       print('좌우 스크롤 끝');
        //     },
        //     child: Container(
        //       decoration: BoxDecoration(
        //         color: Colors.red,
        //       ),
        //       width: 400.0,
        //       height: 400.0,
        //     ),
        //   ),
        // ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     print('플로팅 액션 버튼 클릭!!');
        //   },
        //   child: Text('클릭'),
        // ),
      ),
    ),
  );
}










