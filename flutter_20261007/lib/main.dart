import 'package:flutter/material.dart';
import 'package:flutter_20261007/screens/Inherited_screen.dart';
import 'package:flutter_20261007/screens/change_notifier_screen.dart';
import 'package:flutter_20261007/screens/future_stream_provider_screen.dart';
import 'package:flutter_20261007/screens/home_screen.dart';
import 'package:flutter_20261007/screens/multi_provider_screen.dart';
import 'package:flutter_20261007/screens/provider_screen.dart';
import 'package:flutter_20261007/screens/state_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomeScreen(title: 'Flutter App'),
        '/state': (context) => StateScreen(),
        '/inherited': (context) => InheritedScreen(),
        '/provider': (context) => ProviderScreen(),
        '/changeNotifierProvider': (context) => ChangeNotifierScreen(),
        '/multiProvider': (context) => MultiProviderScreen(),
        '/futureStreamProvider': (context) => FutureStreamProviderScreen(),
      },
    );
  }
}

