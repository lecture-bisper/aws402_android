//  File :  stream_test.dart
//  User :  it
//  Date :  2026-10-06
//  Time :  오후 3:36
//  Desc :  

//  Stream : Future 와 비슷한 목적으로 미래에 발생할 데이터를 반복적으로 사용할 경우 사용하는 클래스
//    Future 는 미래에 한번 발생하는 데이터를 의미, Steam 은 미래에 반복적으로 발생하는 데이터를 의미
//    Future 를 반환하는 함수는 async/await 를 사용하고, Stream 을 반환하는 함수는 async*/await 를 사용함
//    데이터 반환 시 Future 는 return 을 사용하고, Stream 은 yield 를 사용 함

//  fromIterable() : 매개변수로 List와 같은 Iterable 타입의 데이터를 전달
//  var stream = Stream.fromIterable([1, 2, 3]);
//  stream.listen((value) {
//    print('value : $value);
//  });

//  fromFuture() : Future 타입의 데이터를 Stream 객체로 변환
//    매개변수로 Future 타입의 반환하는 함수를 입력
//    var stream = Stream.fromFuture(futureFunc());
//    stream.listen((value) {
//      print('value : $value);
//    });

//    periodic() : 주기적으로 Stream 객체를 만드는 생성자
//      첫번째 매개변수는 Duration 객체를 사용한 실행 주기
//      두번째 매개변수는 반복 실행할 함수

//    take() : 반복 실행할 수 지정, periodic() 만 사용 시 무한 반복함, take() 를 사용하여 반복 수를 지정할 수 있음

//    takeWhile() : 지정한 조건이 true 일 경우에만 데이터를 생성하는 함수, false 이면 데이터를 생성하지 않음

//    skip() : 반복 시 지정한 수만큼 데이터를 출력하지 않음
//      skip(2) 를 사용 시 처음 두번은 데이터를 출력하지 않음

//    skipWhile() : takeWhile()의 반대로 동작, 지정한 조건이 false 일 경우에만 데이터를 출력

//    toList() : 반복 출력되는 결과를 모아서 한번에 리스트로 반환

//    StreamBuilder : FutureBuilder 와 동일한 기능, Stream 을 통해서 미래에 여러번 발생할 데이터를 받아 화면에 출력하는 위젯
//      StreamBuilder 에는 상태가 존재함
//      ConnectionState.waiting : 데이터 발생을 기다리는 상태
//      ConnectionState.active : 데이터가 발생 중이며, 끝나지 않은 상태
//      ConnectionState.done : 데이터 발생이 완료된 상태

Stream<int> streamFunc() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

void streamExecute() async {
  streamFunc().listen((value) {
    print('value : $value');
  });
}

Future<int> futureFunc() async {
  return await Future.delayed(Duration(seconds: 2), () {
    return 10;
  });
}

void futureExecute() async {
  await futureFunc().then((value) => print('result : $value'));
  // int result = await futureFunc();
  // print('result : $result');
}

int calFunc(int x) {
  return x * x;
}

void takeExecute() async {
  Duration duration = Duration(seconds: 2);
  // periodic() 은 반복 설정 함수
  Stream<int> stream = Stream<int>.periodic(duration, calFunc);
  //  반복 수 설정
  stream = stream.take(5);

  //  지정한 조건의 결과가 true 이면 데이터 출력
  // stream = stream.takeWhile((value) {
  //   //  조건 설정
  //   return value < 20;
  // });

  //  처음부터 지정한 회수만큼 생략하고 나머지를 출력
  // stream = stream.skip(2);

  //  지정한 조건의 결과가 false 이면 데이터 출력
  // stream = stream.skipWhile((value) {
  //   return value < 30;
  // });

  //  Stream 으로 반복 실행 후 결과를 리스트로 출력
  Future<List<int>> futureList = stream.toList();
  futureList.then((list) {
    list.forEach((value) {
      print('toList value : $value');
    });
  });

  // stream.listen((value) {
  //   print('priodic value : $value');
  // });
}

void main() {
  print('\n ----- 프로그램 실행 -----\n');
  // futureExecute();
  // streamExecute();
  //
  // var stream1 = Stream.fromIterable([10, 20, 30]);
  // stream1.listen((value) {
  //   print('fromIterable value : $value');
  // });
  //
  // var stream2 = Stream.fromFuture(futureFunc());
  // stream2.listen((value) {
  //   print('fromFuture value : $value');
  // });

  takeExecute();


}










