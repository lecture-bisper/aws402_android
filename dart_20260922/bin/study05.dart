//  File :  study05.dart
//  User :  it
//  Date :  2026-09-22
//  Time :  오후 2:24
//  Desc :  예외처리

void main() {
  print('\n----- try ~ catch ~ finally -----\n');

//  예외처리 : 자바의 예외 처리와 동일한 형태의 try ~ catch 문 임
//  모든 예외에 대한 예외 처리는 catch 가 진행하고, Exception 클래스는 생략 후 객체 'e' 만 입력
//  특정 예외를 지정할 경우 'on예외종류' 형태로 사용
//  특정 예외를 지정하고 해당 예외의 객체가 필요한 경우
//  on{}, catch{} 를 사용하여 여러가지 예외 처리 및 나머지 예외 처리가 가능한
//  스택 트레이스가 필요한 경우 'catch(e, s)' 형태로 사용
//  `throw 예외종류, 를 사용하여 강제로 지정한 예외를 발생시킬 수 있음

  print('\n ----- try ~ catch -----\n');

  try {
    final String name = 'aws402';
    throw Exception('이름을 입력하세요!!');
    print(name);
  }
  catch (e) {
    print('오류 발생!! : \n$e');
  }

  print('\n----- try ~ catch ~ finally 사용 -----\n');

  try {
    final String = '문자열';
    throw Exception('try ~ catch ~ finally 사용 중 예외!!');
  }
  catch (e) {
    print('예외발생\n$e');
  }
  finally {
    print('무조건 실행되는 finally 사용');
  }

  print('\n----- 지정한 예외에 대한 모든 처리 -----\n');

  try {
    int result = 10 ~/ 0;
    print(result);
    throw FormatException('파일 없음');
  }
  //  on 키워드를 사용하여 하나의 try ~ catch 문에 여러개의 예외 코드를 사용하는 방식
  on UnsupportedError catch (e) {
    print('0으로 나눌 수 없습니다.');
    print(e);
  }
  on FormatException {
    print('FormatException 예외 발생');
  }
  //  e 는 예외객체, s 는 스택트레이스 객체
  catch (e, s) {
    print('예외 발생 : $e');
    print('예외 발생 : $s');
  }
}











