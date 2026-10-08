//  File :  change_notifier_widget.dart
//  User :  it
//  Date :  2026-10-07
//  Time :  오후 3:01
//  Desc :  

import 'package:flutter/material.dart';
import 'package:flutter_20261007/utils/counter.dart';
import 'package:flutter_20261007/widgets/middle_provider_widget.dart';
import 'package:provider/provider.dart';

import 'change_notifier_sub_widget.dart';

class ChangeNotifierWidget extends StatelessWidget {
  const ChangeNotifierWidget({super.key});

  @override
  Widget build(BuildContext context) {
    //  ChangeNotifierProvider 를 사용하여 상태값이 변경 시 하위 위젯을 다시 그려줌
    return ChangeNotifierProvider<Counter>.value(
      //  ChangeNotifier 클래스를 상속받은 자식 클래스의 생성자를 상태 데이터로 등록
      value: Counter(),
      //  지정한 위젯부터 해당 위젯의 하위 위젯에서 모두 ChangeNotifierProvider 를 사용할 수 있음
      child: MiddleProviderWidget(),
    );
  }
}









