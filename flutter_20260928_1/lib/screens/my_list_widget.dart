//  File :  my_list_widget.dart
//  User :  it
//  Date :  2026-09-28
//  Time :  오후 2:54
//  Desc :  


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//  BuildContext : 위젯 트리에서 위치와 관련된 정보등의 위젯을 사용할 때 필요한 다양한 정보가 들어있는 클래스
//    현재 위젯의 상위 위젯이 누구인지 확인할 수 있음
//  Key : 모든 위젯이 가지고 있는 식별자, 키값이 어느 영역에서 유일한 값인지 확인
//    Key 클래스가 아래의 모든 키 클래스의 부모 클래스
//    StatelessWidget 에서는 화면에 표시할 데이터를 위젯이 직접 가지고 있기 때문에 Key 를 사용하여 위젯을 구분하지 않아도 상관없음
//    StatefulWidget 에서는 State 클래스와 연동하기 위해서 Key 가 반드시 필요함

//    GlobalKey : 앱 전체에 유일한 값, currentState, currentWidget 속성을 제공, 이 속성을 사용하여 현재 이용하고 있는 키값으로 식별되는 위젯과 State 객체를 얻을 수 있음
//      단순히 위젯을 식별하는 용도로 Key 를 사용할 경우 GlobalKey 로는 만들지 않는 것이 좋음(위젯 트리 구조 및 모든 위젯을 다시 빌드할 수 있음)
//    LocalKey : 이 키값이 지정된 위젯의 부모부터 자식 위젯에서 유일한 값, 하위 클래스로 valueKey, UniqueKey, Object 키를 가지고 있음, 하위 Key 클래스를 사용하여 위젯의 키값을 지정
//    ValueKey : 문자열, 숫자 키값, 문자열 및 숫자의 단순한 값으로 키값을 지정 시 사용
//    UniqueKey : 유일한 난수 키값, 자체적으로 난수를 만들어서 키값으로 지정 시 사용
//    ObjectKey : 객체 키값, 사용자의 이름, 이메일, 주소등을 User 클래스로 선언하고, User 클래스의 객체로 키를 지정하거나 List 등의 여러 데이터를 포함하는 객체를 키로 지정할 때 사용

class MyListWidget extends StatefulWidget {

  @override
  State<MyListWidget> createState() => _MyListWidgetState();
}

class _MyListWidgetState extends State<MyListWidget> {

  //  위젯 리스트, StatelessWidget 을 사용하는 위젯을 저장하는 리스트
  // List<Widget> widgetList = [
  //   MyColorItemWidget(Colors.red),
  //   MyColorItemWidget(Colors.blue),
  // ];

  //  위젯 리스트, StatefulWidget 을 사용하는 MyREDItemWidget, MyBLUEItemWidget 을 저장하는 리스트
  // List<Widget> widgetList = [
  //   MyREDItemWidget(),
  //   MyBLUEItemWidget(),
  // ];

  //  위젯 리스트, StatefulWidget 을 사용하는 위젯을 저장하는 리스트, key 미사용 시
  // List<Widget> widgetList = [
  //   MyColorItemWidget(Colors.blue),
  //   MyColorItemWidget(Colors.red),
  // ];

  //  위젯 리스트, tatefulWidget 을 사용하는 위젯을 저장하는 리스트, key 사용 시
  List<Widget> widgetList = [
    MyColorItemWidget(Colors.red, key: UniqueKey(),),
    MyColorItemWidget(Colors.blue, key: UniqueKey()),
  ];
  
  void onChange() {
    print(widgetList.elementAt(0).key);
    setState(() {
      widgetList.insert(1, widgetList.removeAt(0));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: widgetList,),
        ElevatedButton(onPressed: onChange, child: Text('toggle')),
      ],
    );
  }
}

//  StatelessWidget 은 화면을 구성하는 데이터를 위젯 자체에서 유지함
//  Key 가 없어도 문제되지 않음
// class MyColorItemWidget extends StatelessWidget {
//   //  생성자, Key 를 사용하지 않고 있음
//   MyColorItemWidget(this.color);
//   Color color;
//
//   //  화면을 그리기 위한 build() 메소드가 StatelessWidget 안에 있음
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Container(
//         color: color,
//         width: 150,
//         height: 150,
//       ),
//     );
//   }
// }

//  StatefulWidget 을 사용한 위젯, key 가 없음
class MyREDItemWidget extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() => _MyREDItemWidgetState(Colors.red);
}

//  MyREDItemWidget 과 연동하기 위한 State 가 확실하게 구분됨
class _MyREDItemWidgetState extends State<MyREDItemWidget> {
  _MyREDItemWidgetState(this.color);
  Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: color,
        width: 150,
        height: 150,
      ),
    );
  }
}

//  StatefulWidget 을 사용한 위젯, key 가 없음
class MyBLUEItemWidget extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _MyBLUEItemWidgetState(Colors.blue);
}

//  MyBLUEItemWidget 과 연동하기 위한 State 가 확실하게 구분됨
class _MyBLUEItemWidgetState extends State<MyBLUEItemWidget> {
  _MyBLUEItemWidgetState(this.color);
  Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: color,
        width: 150,
        height: 150,
      ),
    );
  }
}

//  StatefulWidget 을 사용한 위젯, Key 를 사용하지 않았을 경우
class MyColorItemWidget extends StatefulWidget {
  MyColorItemWidget(this.color, {Key? key}) : super(key: key);

  Color color;

  @override
  State<StatefulWidget> createState() => _MyColorItemWidgetState(color);
}

class _MyColorItemWidgetState extends State<MyColorItemWidget> {

  _MyColorItemWidgetState(this.color);

  Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: color,
        width: 150,
        height: 150,
      ),
    );
  }
}












