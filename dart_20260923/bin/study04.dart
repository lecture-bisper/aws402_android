//  File :  study04.dart
//  User :  it
//  Date :  2026-09-23
//  Time :  오후 2:53
//  Desc :  비동기 프로그래밍

//   Future : js 의 Promise 와 비슷한 동작을 하는 dart 언어의 비동기 객체
//    반환 타입으로 Future 를 사용 시 해당 함수가 실행된 후 반환될 결과값을 동기 방식으로 나중에 받아온다는 의미

//   js은 Promise의 then(), catch()를 사용하여 비동기 프로그래밍의 성공과 실패의 경우에 대응하도록 되어 있었던 것을 dart 에서는 Future 의 then(), catchError() 를 통해서 성공과 실패의 경에 대응하도록 되어 있음
//    비동기 함수 선언 시 js 는 async function f() 형태로되어 있고, dart 는 Future<T> f() async 형태로 되어 있음

// async : 비동기 방식 프로그래밍 시 해당 함수가 비동기 방식으로 동작하는 함수라는 것을 알려주기 위한 키워드
//    함수의 매개변수와 코드 블럭 사이에 입력
// await : 비동기 방식으로 동작하는 명령에 입력하는 키워드
//    해당 코드의 이벤트가 완료될 때까지 다음 코드를 실행하지 않고 대기함
//    비동기로 동작하는 코드 앞에 입력


void addNumber1(int num1, num2) {
  print('$num1 + $num2 비동기 계산 시작!!');

  //  Future.delayed() : 지정한 시간만큼 대기했다가 콜백 함수를 실행함
  //  3초 동안 일시 정지
  //  3초 후 콜백함수로 등록한 익명함수가 자동 실행됨
  Future.delayed(Duration(seconds: 3), () {
    print('$num1 + $num2 = ${num1 + num2}');
  });

  print('$num1 + $num2 비동기 계산 완료!!');
}


//  Future 를 사용하여 동기 방식으로 동작 후 결과를 나중에 반환받음
Future<void> addNumber2(int num1, int num2) async {
  print('$num1 + $num2 동기 계산 시작!!');

  //  이벤트 등록 후 대기
  //  이벤트 동작 시 콜백함수가 자동 실행됨
  await Future.delayed(Duration(seconds: 3), () {
    print('$num1 + $num2 = ${num1 + num2}');
  });

  //  이벤트가 완료된 후 나머지 연산 동작
  print('$num1 + $num2 동기 계산 완료!!');
}


void main() {

  addNumber1(10, 20);
  addNumber2(100, 200);

}











