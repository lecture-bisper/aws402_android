import 'package:flutter/material.dart';
import 'package:flutter_20261006/screens/async_await_screen.dart';
import 'package:flutter_20261006/screens/future_screen.dart';
import 'package:flutter_20261006/screens/home_screen.dart';
import 'package:flutter_20261006/screens/stream_screen.dart';
import 'package:flutter_20261006/screens/test1_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: const HomeScreen(title: 'Dio로 스프링부트 서버와 통신'),
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomeScreen(title: '메인 화면'),
        '/test1': (context) => Test1Screen(),
        '/future': (context) => FutureScreen(),
        '/asyncAwait': (context) => AsyncAwaitScreen(),
        '/stream': (context) => StreamScreen(),
      },
    );
  }
}

