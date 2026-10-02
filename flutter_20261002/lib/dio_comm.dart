//  File :  dio_comm.dart
//  User :  it
//  Date :  2026-10-02
//  Time :  오후 2:37
//  Desc :  


//  Http 라이브러리보다 많은 기능을 제공하는 Dio 라이브러리를 사용하여 통신을 진행할 수 있음
//  Dio 라이브러리도 http 라이브러리처럼 통신 방식에 따라 get(), post(), put(), delete() 함수를 제공
//  get/delete 의 사용 방법이 같고, post/put 의 사용 방법이 같음
//  BaseOption() 을 사용하여 전역 설정이 가능함
//  각각의 명령에 options 를 사용하여 추가 옵션을 입력할 수 있음

//  사용법 :
//  Dio().get('url', options: Options(...));
//  Dio().post('url', data: {key1: value1, key2: value2, ... }, options: Options( ...));
//  Dio().put('url', data: {key1: value1, key2: value2, ... }, options: Options( ...));
//  Dio().delete('url', options: Options(...));

//  request() 함수로 요청하기
//  Dio().request('url', data: {key1: value1, key2: value2, ... }. options: Options(method: 'get|post|put|delete'));

//  동시에 여러개 요청하기
//  List<Response<dynamic>> resList = Future.wait([dio.get('url'), dio.get('url2')]);

//  resList.forEach((item) {
//    if (item.statusCode == 200 || item.statusCode == 201) {
//      var result = item.data;
//    }
//  }

//  기본 설정 추가
//  final dio = Dio(
//    BaseOptions (
//      baseUrl: 'url',
//      connectTimeout: const Duration(seconds: 5),
//      receiveTimeout: const Duration(seconds: 3),
//    ),
//  );


import 'package:dio/dio.dart';

void main() async {
  print('\n----- Dio 라이브러리로 통신하기 -----\n');

  try {
    var dioGetRes = await dioGet();

    if (dioGetRes.statusCode == 200 || dioGetRes.statusCode == 201) {
      var result = dioGetRes.data;
      print('get response : $result');
    }

    print('');

    var dioPostRes = await dioPost();

    if (dioPostRes.statusCode == 200 || dioPostRes.statusCode == 201) {
      var result = dioPostRes.data;
      print('post response : $result');
    }

    print('\n ----- request() method : get -----\n');

    var dioRequestRes = await dioRequest('get');

    if (dioRequestRes.statusCode == 200 || dioRequestRes.statusCode == 201) {
      var result = dioRequestRes.data;
      print('request get response : $result');
    }

    print('\n ----- request() method : post -----\n');

    dioRequestRes = await dioRequest('post');

    if (dioRequestRes.statusCode == 200 || dioRequestRes.statusCode == 201) {
      var result = dioRequestRes.data;
      print('request post response : $result');
    }
  }
  catch (e, s) {
    print('오류 발생 : $e');
    print('오류 위치 : $s');
  }
  finally {
    dio.close();
  }
}

final dio = Dio(
  BaseOptions(
    baseUrl: 'https://jsonplaceholder.typicode.com',
    connectTimeout: const Duration(seconds: 5),
    receiveTimeout: const Duration(seconds: 3),
    headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
    }
  )
);

Future dioGet() async {
  return dio.get('/posts/2');
}

Future dioPost() async {
  return dio.post(
    '/posts',
    data: {'title': 'hello', 'body': 'world', 'userId': '3'}
  );
}

Future<Response> dioRequest(String method) async {
  if (method == 'get') {
    return dio.request('/posts/2', options: Options(method: 'get'));
  }
  else {
    return dio.request('/posts', data: {'title': 'hello', 'body': 'world', 'userId': '2'}, options: Options(method: 'post'));
  }
}







