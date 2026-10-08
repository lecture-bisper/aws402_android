//  File :  future_test.dart
//  User :  it
//  Date :  2026-10-06
//  Time :  오후 1:57
//  Desc :  비동기 프로그래밍 Future, async, await, stream

//  Future : 네트워크나 파일처리 등과 같이 작업 시간이 오래 걸리는 작업이 처리되는 동안 다른 작업도 함께 처리하는 것을 비동기 프로그래밍이라고 함
//    이러한 비동기 프로그래밍 시 미래에 발생할 데이터를 저장하는 데이터 타입이 Future 클래스임
//    시간이 오래 걸리는 부분에서 미래의 데이터를 담을 수 있는 Future 클래스 타입의 객체를 생성하고, 다른 작업을 함께 실행 후 실제 데이터가 발생하는 시점에 Future 객체에 데이터를 담아 이용할 수 있게 하는 것
//    Future를 선언 시 제네릭을 사용하여 미래에 발생할 데이터 타입을 지정할 수 있음

//  FutureBuilder : 플러터에서 Future 데이터는 대부분 화면에 출력함
//    Future 를 사용하면 즉시 화면에 출력되지 않음
//    Future 의 결과가 나올 때까지 대기했다가 화면에 출력해주는 위젯이 FutureBuilder 임
//    FutureBuilder 는 위젯이지만 자체 화면 UI 는 없음
//    FutureBuilder 가 출력하는 화면은 AsyncWidgetBuilder 임
//    AsyncWidgetBuilder 의 hasData 속성으로 데이터가 있는지 확인하고, data 속성으로 실제로 발생한 데이터를 출력

//  async : Future 데이터를 이용하기 위해서 then() 을 사용 시 코드가 복잡해지기 때문에 함수의 선언부에 async 를 사용하여 코드의 복잡성을 낮출 수 있음
//  await : 작업의 처리 결과를 받아서 다음 작업을 처리해야할 경우 작업이 끝날 때까지 대기 시키는 명령어, async 가 사용된 함수 안에서만 실행 가능


// 일반적인 함수
int sum() {
  var sum = 0;
  // Stopwatch 객체를 사용하여 시작 시간과 끝나는 시간을 확인
  Stopwatch stopwatch = Stopwatch();
  stopwatch.start();

  //  시간이 오래 걸리는 작업
  for (int i = 0; i < 500000000; i++) {
    sum += i;
  }

  stopwatch.stop();

  // 결과 출력
  print('${stopwatch.elapsed}, result : $sum');

  return sum;
}

//  Future 를 사용하여 비동기 프로그래밍을 수행함
//  반환값이 Future<int> 인 함수
Future<int> futureSum() {
  return Future<int>(() {
    var sum = 0;
    Stopwatch stopwatch = Stopwatch();
    stopwatch.start();

    for (int i = 0; i < 500000000; i++) {
      sum += i;
    }
    stopwatch.stop();

    print('${stopwatch.elapsed}, future result : $sum');

    return sum;
  });
}

void main() {
  print('\n----- 프로그램 실행 -----\n');
  //  Future 타입의 변수 선언 과 함수 호출 및 반환값 저장
  Future<int> futureResult = futureSum();
  //  저장된 데이터 출력, 현재는 타입 정보만 출력됨
    // print('현재 futureResult : $futureResult');

//  Future<int> futureResult = futureSum(); 는 미래에 데이터가 발생한다는 의미이며, 현재는 실제로 데이터가 발생하지는 않음
//  실제로 데이터가 발생 시 콜백함수가 동작하려면 then(), catchError() 를 사용해야 함
  futureResult.then((value) => print('Future 데이터 발생 : $value'));
  futureResult.catchError((error) => print('Future 로 함수 실행 중 오류 발생 : $error'));

  int result = sum();
  print('현재 result : $result');
  print('\n----- 프로그램 종료!! -----\n');
}











