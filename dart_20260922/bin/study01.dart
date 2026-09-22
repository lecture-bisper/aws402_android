//  File :  study01.dart
//  User :  it
//  Date :  2026-09-22
//  Time :  오전 09:10
//  Desc :

void main() {

  print('\n----- 비교 연산자 -----\n');
//   js 및 java의 비교 연산자와 동일함
//    <, >, <=, >=, ==, !=

  var number1 = 10;
  var number2 = 20;

  print('number1 > number2 : ${number1 > number2}');
  print('number1 < number2 : ${number1 < number2}');
  print('number1 >= number2 : ${number1 >= number2}');
  print('number1 <= number2 : ${number1 <= number2}');
  print('number1 == number2 : ${number1 == number2}');
  print('number1 != number2 : ${number1 != number2}');

//   is : 타입 비교 연산자, 지정한 데이터가 지정한 데이터 타입이 맞는지 확인, 맞으면 true, 아니면 false
//  is! : is 의 반대가 되는 연산자, 맞으면 false, 아니면 true
  print('\n ----- is, is! -----');

  int number3 = 10; // 정수 타입으로 선언
  var str1 = '문자열'; // 데이터 타입 추론 방식 사용
  print('변수 number3 : $number3');
  print('변수 str1 : $str1');

  print('');

  print('number3 is int : ${number3 is int}');
  print('number3 is double : ${number3 is double}');
  print('number3 is String : ${number3 is String}');
  print('number3 is bool : ${number3 is bool}');
  print('number3 is! int : ${number3 is! int}' );
  print('number3 is! double : ${number3 is! double}');
  print('number3 is! String : ${number3 is! String}');
  print('number3 is! bool : ${number3 is! bool}');

  print('');

  print('str1 is int : ${str1 is int}');
  print('str1 is double : ${str1 is double}');
  print('str1 is String : ${str1 is String}');
  print('str1 is bool : ${str1 is bool}');
  print('str1 is! int : ${str1 is! int}' );
  print('str1 is! double : ${str1 is! double}');
  print('str1 is! String : ${str1 is! String}');
  print('str1 is! bool : ${str1 is! bool}');


  print('\n ----- 논리 연산자 -----\n');
//   java 및 js 의 논리 연산자와 같음
//    &&, ||

  var result = 12 > 10 && 1 > 0;
  print('12 > 10 && 1 > 0 : $result');

  result = 12 > 10 && 0 > 1;
  print('12 > 10 && 0 > 1 : $result');

  result = 12 > 10 || 1 > 0;
  print('12 > 10 || 1 > 0 : $result');

  result = 12 > 10 || 0 > 1;
  print('12 > 10 || 0 > 1 : $result');

  result = 12 < 10 || 0 > 1;
  print('12 < 10 || 0 > 1 : $result');

  print('현재 result : $result, !result : ${!result}');


  print('\n ----- 단항연산자, 산술 대입 연산자 -----\n');

  var number4 = 10.0; // double 타입으로 자동 추론

  print('현재 number4 : $number4');
  number4++;
  print('number4++ : $number4');
  number4--;
  print('number4-- : $number4');

  print('number4 is double : ${number4 is double}');
  //  자동 타입 변환, 작은 타입이 큰 타입으로 자동 타입 변환
  number4 = 20;
  print('number4 is double : ${number4 is double}');
  print('현재 number4 : $number4');

  number4 += 10;
  print('number4 += 10 : $number4');
  number4 -= 10;
  print('number4 -= 10 : $number4');
  number4 *= 10;
  print('number4 *= 10 : $number4');
  number4 /= 3;
  print('number4 /= 3 : $number4');
  number4 = 10;
  number4 %= 3;
  print('number4 %= 3 : $number4');
  // number4 = 10;
  // number4 ~/= 3; // ~/ 는 숫자를 나눈 몫을 소수점 자리를 뺀 정수로 반환하는데, 산술대입 연산자 ~/= 을 할 경우 number4는 double 타입으로 고정되어 있기 때문에 정수를 저장할 수 없음
  var number5 = 10; // int 타입으로 자동 추론
  number5 ~/= 3;
  print('number5 ~/= 3 : $number5');


  print('\n ----- 삼항연산자 -----\n');
//   java 및 js 의 삼항 연산자와 동일함
//    연산1 ?? 연산2 : 기본값 설정, 연산1 이 null 아닐 경우 연산 1의 결과를 출력하고, 연산 1 이 null 일 경우 연산 2의 결과를 출력함

  var number6 = 10;
  var number7 = 5;
  var result1 = number6 <= number7 ? 'number6 이 크다' : 'number7이 크다';
  print(result1);

  //  옵셔널, dart 의 변수를 기본적으로 null 을 저장할 수 없음
  //  데이터 타입 뒤에 ? 를 사용하여 선언 시 null 저장 가능
  int? number8 = null;
  //  ?? 는 지정한 변수의 값이 null 이면 뒤에 있는 데이터를 기본값으로 사용
  var result2 = number8 ?? '두번째 연산식의 결과를 출력';
  print(result2);


}









