import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_20261001/screens/cupertino_widget.dart';
import 'package:flutter_20261001/screens/material_widget.dart';
import 'package:flutter_20261001/screens/splash_screen.dart';

void main() {
  // runApp(const MyApp());
  runApp(const Splash());
}

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return SplashScreen();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Platform : dart:io 모듈에서 제공, 플랫폼 별로 UI 를 다르게 처리해야할 경우 사용
  //  isAndroid, isIOS, isLinux, isWindows, isMacOS, isFuchsia
  Widget platformUI() {
    if (Platform.isIOS) {
      return CupertinoWidget();
    }
    else if (Platform.isAndroid) {
      return MaterialWidget();
    }
    else {
      return Text(
        'unKnown Device',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return platformUI();
  }
}
