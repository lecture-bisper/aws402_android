//  File :  icon_widget.dart
//  User :  it
//  Date :  2026-09-29
//  Time :  오전 11:32
//  Desc :  


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//  Icon : UI 에 icon 을 출력하는 위젯
//    Icon 과 IconButton 가 있음

//  Icon(IconData, { ... }) 형식으로 사용
//    IconData 는 주로 미리 제공하는 아이콘을 사용함

//  Padding : child 위젯에 여백을 제공할 때 사용하는 위젯
//    사용값은 EdgeInsets 객체를 사용함
//      all(값) : 상하좌우 모두 같은 값을 적용
//      only(top: 값, bottom: 값, left: 값, right: 값) : 상하좌우 모두 다른 값을 직접 입력
//      symmetric(horizontal: 값, vertical: 값) : 가로, 세로 에 서로 다른 값을 입력

//  SafeArea : 애플 스마트폰의 노치 디자인 부분을 앱의 영역으로 모두 포함할 것인지 아닌지를 적용하는 위젯
//    SafeArea(top: true, bottom: true, left: true, right: true)

class IconWidget extends StatelessWidget {
  
  const IconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Column(
      children: [
        Icon(
          Icons.alarm,
          size: 100,
          color: Colors.red,
        ),
        SizedBox(
          height: 100,
          width: 100,
          child: Container(
            color: Colors.red,
          ),
        ),
        IconButton(
          onPressed: () {
            debugPrint('icon button click!!');
          },
          icon: Icon(Icons.alarm, size: 100,),
        ),
        SizedBox(
          height: 100,
          width: 100,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Container(
              color: Colors.red,
            ),
          ),
        ),
        //  FontAwesomeIcon 을 사용
        //  pubspec.yaml 에 FontAwesomeFlutter 라이브러리를 추가하여 사용
        FaIcon(
          FontAwesomeIcons.alarmClock,
          size: 100,
        ),
        IconButton(
          onPressed: () {
            debugPrint('Font Awesome Icon Button Click!!');
          },
          icon: FaIcon(
            FontAwesomeIcons.alarmClock,
            size: 100,
          ),
        ),
      ],
    );
  }
  
}










