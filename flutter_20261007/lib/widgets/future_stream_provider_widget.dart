//  File :  future_stream_provider_widget.dart
//  User :  it
//  Date :  2026-10-07
//  Time :  오후 4:22
//  Desc :  

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'future_stream_sub_provider_widget.dart';


Stream<int> streamFunc() async* {
  for (int i = 1; i <= 10; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

class FutureStreamProviderWidget extends StatelessWidget {
  const FutureStreamProviderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        FutureProvider<String>(
          create: (context) => Future.delayed(Duration(seconds: 4), () => 'world'),
          //  FutureProvider 에서 상태 데이터로 지정한 데이터의 초기값 설정
          initialData: 'hello'
        ),
        StreamProvider<int>(
          create: (context) => streamFunc(),
          initialData: 0,
        ),
      ],
      child: FutureStreamSubProviderWidget(),
    );
  }
}












