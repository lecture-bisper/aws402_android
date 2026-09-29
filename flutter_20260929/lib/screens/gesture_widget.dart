//  File :  gesture_widget.dart
//  User :  it
//  Date :  2026-09-29
//  Time :  오전 11:49
//  Desc :  


import 'package:flutter/material.dart';

//  GestureDetector : 사용자가 화면을 탭하거나 드래그 하는 등의 행위를 감지하는 위젯(이벤트 처리 위젯)
//    UI 에 직접적으로 그리는 것은 없음
//    child 속성에 등록된 자식 위젯에 대한 이벤트 처리를 담당함
//    주로 사용하는 이벤트는 onTap, onDoubleTap, onLongPress, onVerticalDragStart, onVerticalDragEnd, onHorizontalDragStart, onHorizontalDragEnd

//  IconButton, ElevatedButton, FloatingActionButton 등의 사용량이 많은 특정 버튼은 자체적으로 이벤트를 처리함(내부적으로 GestureDetector 를 사용함)

//  FilledButton : 색이 채워진 버튼, 화면의 주 동작
//  ElevatedButton : 그림자가 있는 버튼, 보조 동작
//  OutlinedButton : 테두리만 있는 버튼, 취소/되돌리기
//  TextButton : 글자 버튼, 덜 중요한 링크
//  IconButton : 아이콘 버튼, AppBar/목록의 요소

//  ElevatedButton의 onPressed 속성에 null 을 입력 시 비활성화된 버튼으로 출력

//  SizedBox : 일반적으로 일정 크기의 공간을 두고 싶을 경우 사용하는 위젯
//    주로 height, width 속성을 사용함
//    child 속성을 사용하여 자식 위젯을 가질 수 있음

class GestureWidget extends StatelessWidget {

  const GestureWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        //  사용자 이벤트 처리를 위한 GestureDetector 추가
        GestureDetector(
          //  GestureDetector 의 자식으로 Image 위젯 사용
          child: Image.asset('images/dog02.jpg'),
          //  onTap 이벤트 설정
          onTap: () {
            debugPrint('Image Click!!');
          },
          onVerticalDragStart: (DragStartDetails details) {
            debugPrint('세로 방향 드래그 시작.. 전역 position : ${details.globalPosition.dx}, ${details.globalPosition.dy}');
            debugPrint('세로 방향 드래그 시작.. 지역 position : ${details.localPosition.dx}, ${details.localPosition.dy}');
          },
        ),
        //  일반적으로 사용하는 버튼
        ElevatedButton(
          //  버튼 이벤트 설정
          onPressed: () {
            debugPrint('ElevatedButton Click!!');
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
          ),
          //  컨텐츠
          child: Text('스타일 적용'),
        ),
        ElevatedButton(
          //  버튼 이벤트에 null 을 적용 시 비활성화된 버튼이 됨
          onPressed: null ,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
          ),
          child: Text('버튼 비활성화'),
        ),
        ElevatedButton(
          onPressed: () {
            debugPrint('ElevatedButton Click!!');
          },
          child: Text('기본 테마 버튼'),
        ),
        SizedBox(
          height: 8,
        ),
        FilledButton(
          onPressed: () {
            debugPrint('FilledButton Click!!');
          },
          child: Text('FilledButton')
        ),
        SizedBox(
          height: 20,
        ),
        OutlinedButton(
          onPressed: () {
            debugPrint('OutlinedButton Click!!');
          },
          child: Text('OutlinedButton')
        ),
        TextButton(
          onPressed: () {
            debugPrint('TextButton Click!!');
          },
          child: Text('TextButton')
        ),
        IconButton(
          onPressed: () {
            debugPrint('IconButton Click!!');
          },
          icon: Icon(Icons.tiktok),
        ),
        SizedBox(
          height: 200,
          width: 200,
          child: Container(
            color: Colors.red,
          ),
        )
      ],
    );
  }

}









