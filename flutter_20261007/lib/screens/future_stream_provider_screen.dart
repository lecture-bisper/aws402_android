//  File :  future_stream_provider_screen.dart
//  User :  it
//  Date :  2026-10-07
//  Time :  오후 4:19
//  Desc :  

import 'package:flutter/material.dart';
import 'package:flutter_20261007/widgets/future_stream_provider_widget.dart';

class FutureStreamProviderScreen extends StatelessWidget {
  const FutureStreamProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Future/Stream Provider 사용'),
      ),
      body: FutureStreamProviderWidget(),
    );
  }
}










