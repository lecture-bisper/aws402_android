//  File :  lifecycle_widget.dart
//  User :  it
//  Date :  2026-09-28
//  Time :  오후 2:06
//  Desc :  


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LifecycleWidget extends StatefulWidget {
  //  클래스의 생성자를 통해서 부모가 전달하는 데이터를 받아옴
  const LifecycleWidget({super.key, required this.label});

  //  부모가 전달하는 데이터를 저장할 상수
  final String label;

  @override
  State<LifecycleWidget> createState() => _LifecycleWidgetState();
}


class _LifecycleWidgetState extends State<LifecycleWidget> {
  int count = 0;

  //  현재 위젯(위젯의 상태인 State 객체)이 처음 생성될 때 1회만 호출
  @override
  void initState() {
    //  initState() 는 부모의 initState() 를 가장 먼저 호출해야 함
    super.initState();
    debugPrint('\n***** initState 호출 : 1회만 호출, 초기 데이터 준비 *****');
  }

  //  initState() 호출 직후에 호출, 의존하는 상위 데이터(앱의 테마등이 변경될 경우)가 변경될 때 호출
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint('\n***** didChangeDependencies 호출!!');
  }

  //  현재 위젯의 상태가 'dirty' 일 경우 자동 호출
  @override
  Widget build(BuildContext context) {
    debugPrint('\n***** build 호출 : count = $count');

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          //  State 안에서 위젯의 멤버 변수를 사용 시 'widget.멤버 변수명' 을 사용
          '${widget.label} : $count',
          style: const TextStyle(fontSize: 24)
        ),
        ElevatedButton(
          onPressed: () => setState(() => count++),
          child: const Text('증가'),
        ),
      ],
    );
  }

  //  부모 위젯이 새로운 데이터로 현재 위젯을 다시 생성 시 자동 호출
  @override
  void didUpdateWidget(covariant LifecycleWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    debugPrint('\n***** didUpdateWidget 호출 : label ${oldWidget.label} -> ${widget.label}');
  }

  //  현재 위젯이 위젯트리에서 삭제될 경우 호출
  @override
  void dispose() {
    debugPrint('\n***** dispose 호출 : 정리 작업 (각종 컨트롤러나 타이머 객체 해제)');
    //  dispose() 는 부모의 dispose()를 가장 마지막에 호출해야 함
    super.dispose();
  }

}







