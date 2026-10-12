//  File :  auth_screen.dart
//  User :  it
//  Date :  2026-10-12
//  Time :  오전 10:41
//  Desc :  

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

//  Fluttertoast 라이브러리를 이용하여 쉽게 Toast 메시지를 출력하기 위한 함수 선언
void showToast(String msg) {
  Fluttertoast.showToast(
    msg: msg, // Toast 메시지로 출력할 문자열
    toastLength: Toast.LENGTH_SHORT, // Toast 메시지의 출력 시간
    gravity: ToastGravity.BOTTOM, // Toast 메시지 출력 위치
    timeInSecForIosWeb: 2, // Toast 메시지 출력 시간(web, ios)
    backgroundColor: Colors.cyanAccent, // Toast 메시지 배경 색상
    textColor: Colors.black54, // Toast 메시지 텍스트 색상
    fontSize: 16.0, // Toast 메시지 텍스트 크기
  );
}

//  Firebase : 2011년 파이어베이스 사가 개발하고, 2014년 구글이 인수한 모바일과 웹 어플리케이션을 개발하는 플랫폼
//  앱에서 파이어베이스를 사용하여 서버없이 파이어베이스가 서버의 기능을 대신하는 서비스를 목적으로 개발됨
//  Authentication(회원 가입 및 사용자 인증), Cloud Firestore(데이터베이스), Realtime Database(실시간 데이터베이스), Storage(파일 저장소), Hosting(웹 호스팅), Functions(서버로직 작성), Machine Learning(모바일 개발자용 머신러닝)

//  각종 정보 변경이 필요하기 때문에 Stateful 방식 사용
class AuthScreen extends StatefulWidget{
  final String title;

  const AuthScreen({super.key, required this.title});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _formKey = GlobalKey<FormState>();

  // late 를 사용하여 지연 사용
  late String email;
  late String password;
  bool isInput = true;  // 입력 내용이 있는지 여부
  bool isSignIn = true; // 로그인 여부

  void signIn() async {
    try {
      //  FirebaseAuth.instance : 파이어베이스 사용자 인증을 위한 객체
      await FirebaseAuth.instance
      //  이메일과 비밀번호를 사용하여 사용자 인증
      .signInWithEmailAndPassword(email: email, password: password)
      //  통신 성공 시
      .then((value) {
        debugPrint('$value');

        //  입력한 이메일에 대한 인증 여부 확인
        if (value.user!.emailVerified) {
          //  사용자 입력 창 출력 여부, false 는 입력창 없음
          setState(() => isInput = false );
        }
        else {
          //  이메일 인증 실패 시
          showToast('사용자 Email 을 확인해주세요');
        }
      });
    }
    on FirebaseAuthException catch (e) {
      //  사용자가 없거나 비밀번호가 다를 경우
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        showToast('사용자 Email/Password 를 확인하세요.');
      }
      else {
        showToast('로그인 중 오류가 발생했습니다.');
      }
    }
  }

  //  로그아웃
  void signOut() async {
    //  파이어베이스의 사용자 인증 객체에서 제공하는 signOut() 메소드를 호출하여 로그아웃
    await FirebaseAuth.instance.signOut();
    setState(() => isInput = true );
  }

  //  회원 가입
  void signUp() async {
    try {
      //  파이어베이스의 사용자 인증 객체에서 제공하는 createUserWithEmailAndPassword() 메소드를 사용하여 사용자 추가
      await FirebaseAuth.instance
      .createUserWithEmailAndPassword(email: email, password: password)
      .then((value) {
        //  회원 가입 성공 시 이메일 인증 메일 전송
        if (value.user!.email != null) {
          //  sendEmailVerification() 을 사용하여 파이어베이스에서 제공하는 템플릿의 내용으로 인증 이메일이 발송됨
          FirebaseAuth.instance.currentUser?.sendEmailVerification();
          setState(() => isInput = false);
        }
        return value;
      });
    }
    on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        showToast('비밀번호는 6자 이상이어야 합니다.');
      }
      else if (e.code == 'email-already-in-use') {
        showToast('이미 사용 중인 이메일입니다.');
      }
      else {
        showToast('회원 가입 중 오류가 발생했습니다.');
      }
    }
    catch (e) {
      debugPrint('오류 발생 : ${e.toString()}');
    }
  }

  //  사용자 입력 필드가 있는 화면 UI 그리기
  List<Widget> getInputWidget() {
    return [
      Text(
        //  멤버 변수 isSignIn 을 통해서 로그인 또는 회원가입 화면 출력
        isSignIn ? '로그인' : '회원가입',
        style: TextStyle(
          color: Colors.indigoAccent,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 8.0,),
      //  사용자 입력 정보를 받기 위한 Form 위젯 사용
      Form(
        key: _formKey,
        child: Column(
          children: [
            //  실제 사용자 입력 정보를 위한 TextFormField 위젯 사용
            TextFormField(
              decoration: InputDecoration(
                labelText: '이메일',
                hintText: '이메일을 입력하세요',
              ),
              validator: (value) {
                value = value?.trim();
                //  isEmpty 를 사용하여 사용자 입력 필드 위젯이 비었는지 확인
                //  ?? 을 사용하여 기본값 설정
                if (value?.isEmpty ?? false) {
                  return '이메일을 입력하세요';
                }
                return null;
              },
              //  Form 위젯의 save 이벤트 발생 시 email 에 사용자 입력 데이터 저장
              onSaved: (String? value) {
                email = value ?? '';
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: '비밀번호',
                hintText: '비밀번호를 입력하세요',
              ),
              //  비밀번호 입력 위젯이므로 입력된 텍스트 숨김
              obscureText: true,
              validator: (value) {
                if (value?.isEmpty ?? false) {
                  return '비밀번호를 입력하세요';
                }
                return null;
              },
              onSaved: (String? value) {
                password = value ?? '';
              },
            ),
          ],
        ),
      ),
      SizedBox(height: 8.0,),
      FilledButton(
        onPressed: () {
          //  Form 위젯의 자식 위젯인 TextFormField 의 validator 이벤트를 호출하고 그 결과를 가져옴
          if (_formKey.currentState?.validate() ?? false) {
            _formKey.currentState?.save();
            debugPrint('email : $email, password : $password');
          }

          //  멤버 변수 isSignIn 의 값에 따라 로그인 / 회원 가입 로직 실행
          if (isSignIn) {
            signIn();
          }
          else {
            signUp();
          }
        },
        child: Text(isSignIn ? '로그인' : '회원가입'),
      ),
      SizedBox(height: 8.0,),
      RichText(
        text: TextSpan(
          text: 'Go ',
          style: Theme.of(context).textTheme.bodyLarge,
          children: <TextSpan>[
            TextSpan(
              text: isSignIn ? '회원가입' : '로그인',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
              //  사용자 터치 이벤트 등록
              recognizer: TapGestureRecognizer()
              //  캐스케이드 연산자 .. 을 사용하여 멤버 변수 isSignIn 의 값을 반대로 입력, UI 다시 그리기
              ..onTap = () {
                setState(() => isSignIn = !isSignIn );
              },
            ),
          ],
        ),
      ),
    ];
  }

  //  사용자 입력 결과 출력 메소드, 로그인 성공 / 회원 가입 성공 시 출력할 UI
  List<Widget> getResultWidget() {
    //  파이어베이스 사용자 인증 객체에서 제공하는 현재 사용자 정보 중 이메일을 가져와서 변수에 저장
    String resultEmail = FirebaseAuth.instance.currentUser!.email!;

    return [
      Text(
        isSignIn ? '$resultEmail 님 반갑습니다.' : '$resultEmail 로 회원 가입 하셨습니다.\n이메일 인증을 완료해야 로그인이 가능합니다.',
        style: TextStyle(
          color: Colors.black54,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
      SizedBox(height: 8.0,),
      FilledButton(
        onPressed: () {
          if (isSignIn) {
            signOut();
          }
          else {
            setState(() {
              isInput = true;
              isSignIn = true;
            });
          }
        },
        child: Text(isSignIn ? '로그아웃' : '로그인'),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          //  멤버 변수 isInput 의 값에 따라 그려줄 UI 를 바꿔 실행
          children: isInput ? getInputWidget() : getResultWidget(),
        ),
      ),
    );
  }

}









