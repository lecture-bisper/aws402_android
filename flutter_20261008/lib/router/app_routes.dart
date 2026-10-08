//  File :  app_routes.dart
//  User :  it
//  Date :  2026-10-08
//  Time :  오전 9:30
//  Desc :  Navigator 을 통한 라우팅 정보 파일

import 'package:flutter/cupertino.dart';
import 'package:flutter_20261008/screens/consumer_screen.dart';
import 'package:flutter_20261008/screens/database_screen.dart';
import 'package:flutter_20261008/screens/geo_screen.dart';
import 'package:flutter_20261008/screens/home_screen.dart';
import 'package:flutter_20261008/screens/image_picker_screen.dart';
import 'package:flutter_20261008/screens/selector_screen.dart';
import 'package:flutter_20261008/screens/storage_screen.dart';

//  Navigator 을 통한 라우팅 사용 시 참고할 라우트 정보 클래스 파일
//  위젯을 상속받지 않았기 때문에 일반 클래스
class AppRoutes {
  //  클래스 생성자, 네임드 생성자로 선언 시 '_'를 사용하여 외부에서 접근할 수 없도록 함
  const AppRoutes._();

  //  정적멤버로만 사용하도록 함
  //  라우트 이름 설정, 문자열을 직접 입력 시 오타 발생 가능성이 있으므로 상수로 선언
  static const String home = '/';
  static const String consumer = '/consumer';
  static const String selector = '/selector';
  static const String geolocator = '/geolocator';
  static const String imagePicker = '/imagePicker';
  static const String storage = '/storage';
  static const String database = '/database';

  //  main.dart 파일에서 참조하는 라우팅 정보
  static final Map<String, WidgetBuilder> routes = {
    home: (context) => const HomeScreen(title: 'Flutter Study Home Page'),
    consumer: (context) => const ConsumerScreen(),
    selector: (context) => const SelectorScreen(title: 'Selector 사용하기'),
    geolocator: (context) => const GeoScreen(title: 'GPS 로 위치정보 사용하기'),
    imagePicker: (context) => const ImagePickerScreen(title: 'Image Picker 사용하기'),
    storage: (context) => const StorageScreen(title: '내부 저장소 사용하기'),
    database: (context) => const DatabaseScreen(title: '내부 데이터베이스 사용하기'),
  };
}











