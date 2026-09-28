//  File :  home_screen.dart
//  User :  it
//  Date :  2026-09-28
//  Time :  오후 12:09
//  Desc :  

//  IOS 의 디자인 가이드를 따라 UI를 구성하는 클래스
import 'package:flutter/cupertino.dart';
//  Android 의 디자인 가이드인 머티리얼 UI 를 구성하는 클래스
import 'package:flutter/material.dart';

//  StatelessWidget : 처음 화면 UI 가 만들어진 그대로 계속 유지하는 방식 (상태 관리가 없는 위젯, 한번 화면을 그리고 더이상 변경 없음)

//  부모 클래스인 StatelessWidget 을 상속받은 자식 클래스 CheckWidget
class CheckWidget1 extends StatelessWidget {
  const CheckWidget1({super.key});

  //  StatelessWidget 클래스를 상속받아 화면 UI 를 그리는 메소드
  //  StatelessWidget 클래스를 상속받았을 경우 반드시 오버라이딩해야 함
  @override
  Widget build(BuildContext context) {
    //  현재 상태를 저장하고 있는 변수
    bool enabled = false;
    String stateText = '꺼짐';

    //  이벤트 처리 메소드
    void changeCheck() {
      //  이벤트 발생 시 상태 값 변경
      enabled = !enabled;
      stateText = enabled ? '켜짐' : '꺼짐';
      // print('값은 바뀜 : $stateText');
      debugPrint('값은 바뀜 : $stateText');
    }

    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        //  children 속성을 사용하여 자식 위젯을 여러개 가질 수 있음
        children: [
          IconButton(
            icon: Icon(
              enabled ? Icons.check_box : Icons.check_box_outline_blank,
              size: 20,
            ),
            color: Colors.red,
            //  버튼의 이벤트
            onPressed: changeCheck,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              stateText,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}



//  StatefulWidget 클래스를 상속받은 자식 클래스 CheckWidget2
class CheckWidget2 extends StatefulWidget {
  //  생성자 선언
  const CheckWidget2({super.key});

  //  StatefulWidget 클래스의 객체 생성 시 생성자 실행 후 자동으로 실행되는 createState() 메소드
  //  반환 타입이 State 클래스 타입, 제네릭을 사용하여 State<CheckWidget2> 타입을 반환
  //  _CheckWidget2State 클래스의 객체 생성 후 반환, '_' 를 사용하여 private 타입의 객체 생성
  //  외부 파일에서는 접근 불가
  @override
  State<CheckWidget2> createState() => _CheckWidget2State();
}

//  State 클래스를 상속받은 자식 클래스 _CheckWidget2State
//  실제로 화면 UI 를 그리는 클래스
class _CheckWidget2State extends State<CheckWidget2> {
  bool enabled = false;
  String stateText = '꺼짐';

  void changeCheck() {
    //  setState() 함수를 통해서 현재 위젯의 상태를 변경함
    //  setState() 함수가 실행되면 화면을 다시 그림
    setState(() {
      enabled = !enabled;
      stateText = enabled ? '켜짐' : '꺼짐';
      debugPrint('값도 바뀜 : $stateText');
    });
  }

  //  실제 화면을 그리는 메소드
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(
              enabled ? Icons.check_box : Icons.check_box_outline_blank,
              size: 20,
            ),
            color: Colors.red,
            onPressed: changeCheck,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              stateText,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        ],
      ),
    );
  }
}














