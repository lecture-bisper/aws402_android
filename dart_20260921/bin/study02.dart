
void main() {
//    dart 의 연산자
//    js 및 jav 의 연산자와 기본적으로 동일함

//  -변수 : 단항 마이너스, 변수 앞에 '-' 기호를 사용하여 현재 변수의 부호를 반대로 변경할 수 있음
//  ~/ : 정수만 출력하는 나눗셈 연산자
//    dart 언어에서는 '/' 연산자를 사용 시 double 타입으로 몫을 반환
//    ~/ 연산자 사용 시 int 타입으로 몫을 반환

  print('\n ----- 산술 연산자 -----\n');

  int number = 10;
  print('원본 number : $number');

  print(number + 3);
  print(number - 3);
  print(number * 3);
  print(number / 3);
  print(number % 3);

  print('number 의 현재 값 : $number');
  number = -number;
  print('단항 마이너스 연산자 사용 후 값 : $number');
  number = -number;
  print('단항 마이너스 연산자 사용 후 값 : $number');

  print('number / 3 은 ${number / 3}');
  print('number ~/ 3 은 ${number ~/ 3}');

  print('\n ----- null 관련 연산자 -----\n');

  //  ? : dart 의 변수에 null 을 저장할 수 있도록 하는 연산자
//    dart 언어는 null 안정성을 위해서 변수에 null 을 저장할 수 없음
//    데이터 타입 뒤에 '?' 를 사용할 경우 null 을 저장할 수 있음

//  ??= : 데이터 타입 뒤에 '?' 를 사용하여 null 을 저장할 수 있는 변수에 다시 데이터를 입력 시 기존 데이터가 null 일 경우에만 데이터를 저장하는 대입 연산자
//    변수의 기존 데이터가 null 아닐 경우 오류가 발생하지 않지만 데이터가 변경되지 않음

  double? number1 = 10; // ? 를 사용하여 null 저장 가능
  double number2 = 20; // ? 미사용으로 null 저장 불가
  print('number1 : $number1');
  print('number2 : $number2');

  number1 = null; //  ? 를 사용하여 null 을 저장할 수 있으므로 null 저장 가능
  print('number1 : $number1');
  // number2 = null;  // ? 미사용으로 null 을 저장할 수 없으므로 오류 발생

  print('현재 number1 의 값 : $number');
  number1 = 10;
  print('현재 number1 에 = 를 사용하여 데이터 저장 : $number1');
  number1 ??= 20; // 오류는 발생하지 않았지만 데이터가 저장되지 않음
  print('현재 number1 에 ??= 를 사용하여 데이터 저장 : $number1');
  number1 = null; // number1 에 null 을 저장
  number1 ??= 20; // null 을 저장했던 변수에 ??= 로 다른 데이터 저장
  print('number1 에 null 저장 후 다시 ??= 로 다른 데이터 저장 : $number1');

}









