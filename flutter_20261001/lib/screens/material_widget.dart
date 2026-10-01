//  File :  material_widget.dart
//  User :  it
//  Date :  2026-10-01
//  Time :  오전 9:32
//  Desc :  

import 'package:flutter/material.dart';
import 'package:flutter_20261001/screens/four_screen.dart';
import 'package:flutter_20261001/screens/one_screen.dart';
import 'package:flutter_20261001/screens/scaffold_widget.dart';
import 'package:flutter_20261001/screens/sliver_app_bar_widget.dart';
import 'package:flutter_20261001/screens/three_screen.dart';
import 'package:flutter_20261001/screens/two_screen.dart';

//  Scaffold : 앱 화면의 골격을 제공하는 위젯, 앱 화면 상단의 타이틀, 메뉴 아이콘을 출력하는 앱바, 화면 하단의 탭 버튼, 화면 오른쪽에서 출력되는 드로어등을 포함

//    appBar : 앱 상단 구성
//    body : 앱 본문
//    floatingActionButton : 화면 오른쪽 하단에 떠 있는 버튼
//    drawer : 화면 양 끝에서 가로로 열리는 메뉴
//    bottomNavigationBar : 화면 하단의 버튼
//      BottomNavigationBar 위젯으로 구성
//      각 버튼은 BottomNavigationBarItem 위젯으로 구성
//      type 속성에 BottomNavigationBarType.shifting | fixed 사용가능

class MaterialWidget extends StatefulWidget {
  const MaterialWidget({super.key});

  @override
  State<MaterialWidget> createState() => _MaterialWidgetState();
}

class _MaterialWidgetState extends State<MaterialWidget> {


  List<Widget> _widgetOptions = <Widget>[
    Text(
      'First screen',
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    ),
    Text(
      'Second screen',
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    ),
    Text(
      'Third screen',
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    ),
    Text(
      'Fourth screen',
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    ),
  ];



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //  app 상단의 debug 표시 여부 설정
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      //  앱의 전체 테마 설정 시 사용
      theme: ThemeData(
        // primarySwatch: Colors.pink,
        colorScheme: .fromSeed(seedColor: Colors.blue),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.orange,
          foregroundColor: Colors.white,
        ),
      ),
      // home: ScaffoldWidget(),
      // home: SliverAppBarWidget(),

      // route : 플러터 앱의 화면을 전환(리액트의 라우터와 비슷함)
      // 화면 전환 시 Route 와 Navigator 를 사용함
      //  Route 로 전환할 화면의 정보를 설정하고, Navigator 로 페이지 전환을 진행함
      //  Navigator 에서 제공하는 기본 함수 push(), pop(), pushNamed() 가 있음
      //    push() : 두번째 매개변수로 MaterialPageRoute() 를 사용하여 전환할 페이지로 이동
      //    pop() : 매개변수로 BuildContext 를 사용하여 이전 페이지로 이동, 마지막 페이지에서 pop() 사용 시 프로그램 종료
      //    pushNamed() : 두번째 매개변수로 routes 속성에 설정해 놓은 페이지 이름을 기반으로 이동함
      //      MaterialApp() 에서 routes 속성에 미리 이동할 페이지의 이름과 실제 페이지명을 설정 후 사용
      //      initialRoute 속성은 routes 사용 시 첫 화면으로 사용할 페이지를 설정(routes 에 설정한 이름)
      //
      //    페이지 이동 시 데이터 전달
      //      pushNamed() 의 3번째 매개변수인 arguments : 속성에 데이터를 입력하여 전달
      //      한번에 여러개의 데이터 전달 시 Map 방식으로 데이터를 전달
      //      데이터를 받는 곳에서는 ModalRoute 를 통해서 데이터를 가져옴
      //      pop() 을 사용하여 이전 페이지로 이동 시 데이터 전달은 두번째 매개변수를 통해서 전달

      //    동적 라우트 등록
      //      onGenerateRoute 속성을 사용하여 MaterialPageRoute() 로 동적 라우트를 등록

      //    maybePop() : pop() 과 동일한 기능, 가장 마지막 페이지 일 경우 pop() 이 동작하지 않음
      //    canPop() : 현재 페이지가 가장 마지막 페이지인지 여부를 출력, 마지막 페이지이면 false, 아니면 true

      //    pushReplacementNamed(), popAndPushNamed() : 현재 위젯을 다른 위젯으로 변경하거나, 삭제 후 새로운 위젯을 실행하는 함수

      //    pushNamedAndRemoveUntil() : 3번째 매개변수로 라우팅 사용 여부를 지정할 수 있음, true 사용 시 기본 pushNamed() 와 동일함, false 를 사용하면 현재까지 페이지 이동 히스토리를 모두 삭제(현재 페이지만 남김)

      //    popUntil() : 페이지 이동 히스토리 중 지정한 위젯으로 한번에 이동 시 사용

      // home: OneScreen(),
      initialRoute: '/one',
      routes: {
        '/one': (context) => OneScreen(),
        '/two': (context) => TwoScreen(),
        // '/three': (context) => ThreeScreen(),
        '/four': (context) => FourScreen(),
      },
      onGenerateRoute: (settings) {

        if (settings.name == '/three') {
          //  동적 라우팅 등록 시 전달하는 데이터가 있을 경우 settings.arguments 를 통해서 전달하는 데이터 유무를 화인할 수 있음
          final arg = settings.arguments;

          //  조건에 따라 MaterialPageRoute() 로 설정할 페이지를 변경
          if (arg != null) {
            return MaterialPageRoute(
              builder: (context) => ThreeScreen(),
              settings: settings
            );
          }
          else {
            return MaterialPageRoute(
              builder: (context) => FourScreen(),
            );
          }
        }

        // if (settings.name == '/three') {
        //   return MaterialPageRoute(
        //     builder: (context) => ThreeScreen(),
        //     settings: settings
        //   );
        // }
        // else if (settings.name == '/four') {
        //   return MaterialPageRoute(
        //     builder: (context) => FourScreen(),
        //     settings: settings,
        //   );
        // }
      },
    );
  }
}









