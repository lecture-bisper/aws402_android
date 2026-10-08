//  File :  multi_provider_screen.dart
//  User :  it
//  Date :  2026-10-07
//  Time :  오후 3:29
//  Desc :  

import 'package:flutter/material.dart';
import 'package:flutter_20261007/widgets/multi_provider_widget.dart';

//  MultiProvider : Provider 는 기본적으로 하나의 의미 단위로 생성되기 때문에 Provider로 여러개의 상태 데이터를 관리하려면 Provider 도 여러개 필요함
//    MultiProvider 를 사용하면 한번에 여러개의 Provider 를 등록할 수 있음
//    providers 속성에 리스트로 Provider 를 여러개 등록할 수 있음
//    사용할 경우에는 기존의 Provider.of<데이터타입>(context) 형식을 사용하여 상태 데이터를 출력함
//    동일한 데이터 타입의 Provider 를 여러개 등록했을 경우 마지막으로 등록한 Provider 만 출력

class MultiProviderScreen extends StatelessWidget {
  const MultiProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('MultiProvider 사용'),
      ),
      body: MultiProviderWidget(),
    );
  }
}









