//  File :  http_comm.dart
//  User :  it
//  Date :  2026-10-02
//  Time :  오후 12:41
//  Desc :  

import 'package:http/http.dart' as http;

void main() async {
  print("\n ----- http 패키지로 통신하기 -----\n");

//  플러터의 네트워크 프로그래밍은 기본적으로 http 통신을 이용
//  플러터에서 http 통신을 하려면 http 라이브러리가 필요함
//    import 'package:http/http.dart' as http;
//  통신 방식에 따라 get(), post(), put(), delete() 함수를 제공함
//  header 정보를 Map<String, String> 형식으로 작성하여 통신 옵션을 추가할 수 있음
//  네트워크 프로그래밍이기 때문에 Future 를 사용하여 비동기 프로그래밍으로 진행해야 함

//  사용법:
//  http.Response response = await http.get('url');
//  http.Response response = await http.post('url', body: {key1: value1, key2: value2, ... });

  var client = http.Client();

  try {
    http.Response resGet = await httpGet();

    if (resGet.statusCode == 200 || resGet.statusCode == 201) {
      String result = resGet.body;
      print('get response : $result');
    }

    print('');

    http.Response resPost = await httpPost();

    if (resPost.statusCode == 200 || resPost.statusCode == 201) {
      String result = resPost.body;
      print('post response : $result');
    }
  }
  catch (e, s) {
    print('오류 발생 : $e');
    print('오류 위치 : $s');
  }
  finally {
    client.close();
  }


}

Future<http.Response> httpGet() async {
  Map<String, String> headers = {
    'contents-type': 'application/json',
    'accept': 'application/json'
  };

  return http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'), headers: headers);
}

Future<http.Response> httpPost() async {
  Map<String, String> headers = {
    'content-type': 'application/json',
    'accept': 'application/json'
  };

  return http.post(
    Uri.parse('https://jsonplaceholder.typicode.com/posts'),
    body: {'title': 'hello', 'body': 'world', 'userId': '2'}
    // headers: headers
  );
}







