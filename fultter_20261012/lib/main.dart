import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

//  firebase 를 사용하기 위한 기본적인 라이브러리
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
//  firebase 에서 자동으로 생성하는 클래스, firebase를 사용하기 위한 키가 포함되어 있음
import 'package:fultter_20261012/firebase_options.dart';
import 'package:fultter_20261012/screens/fcm_screen.dart';

import 'package:fultter_20261012/screens/home_screen.dart';
import 'package:fultter_20261012/screens/naver_map_screen.dart';


@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage messages) async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );

  debugPrint('[백그라운드 수신] : ${messages.notification?.title}');
}


Future<void> main() async {
  // 플러터 앱이 실행 완료 시까지 기다리기
  WidgetsFlutterBinding.ensureInitialized();

  // 파이어베이스를 사용하기 위한 기본 설정
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  //  네이버 지도 API 기본 설정
  await FlutterNaverMap().init(
    //  API 인증키
    clientId: 'jysyca3e0g',
    onAuthFailed: (ex) {
      switch (ex) {
        case NQuotaExceededException(:final message):
          print('사용량 초과 (message : $message)');
        break;

        case NUnauthorizedClientException() ||
          NClientUnspecifiedException() ||
          NAnotherAuthFailedException():
          debugPrint('인증 실패 : $ex');
        break;
      }
    }
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: const HomeScreen(title: 'Flutter Login Test'),
      // home: const NaverMapScreen(),
      home: const FcmScreen(),
    );
  }
}

