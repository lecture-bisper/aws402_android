//  File :  multi_provider_widget.dart
//  User :  it
//  Date :  2026-10-07
//  Time :  오후 3:35
//  Desc :  

import 'package:flutter/material.dart';
import 'package:flutter_20261007/widgets/middle_multi_provider_widget.dart';
import 'package:provider/provider.dart';

import '../utils/counter.dart';

class MultiProviderWidget extends StatelessWidget {
  const MultiProviderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    //  여러개의 상태 데이터를 Provider 를 통해서 상태 관리
    //  Provider의 child 에 Provider 를 사용하여 여러개의 Provider 를 생성
    // return Provider<int>.value(
    //   value: 10,
    //   child: Provider<String>.value(
    //     value: 'hello',
    //     child: ChangeNotifierProvider<Counter>.value(
    //       value: Counter(),
    //       child: MiddleProviderWidget(),
    //     ),
    //   ),
    // );

    //  MultiProvider 를 사용하여 여러개의 Provider 를 한번에 등록
    return MultiProvider(
      providers: [
        Provider<int>.value(value:  10,),
        Provider<String>.value(value: 'hello',),
        ChangeNotifierProvider<Counter>.value(value: Counter(),),
        Provider<int>.value(value: 200,),
        Provider<String>.value(value: '헬로월드'),
      ],
      child: MiddleMultiProviderWidget(),
    );


  }
}









