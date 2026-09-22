//  File :  study02.dart
//  User :  it
//  Date :  2026-09-22
//  Time :  오전 10:30
//  Desc :

void main() {
//   제어문
//    java 및 js 의 제어문과 동일함
//    단순 if :
//    if ~ else :
//    else if :

  print('\n----- if, if ~ else, else if -----\n');

  int num = 9;
  print('num : $num');

  if (num % 2 ==0) {
    print('num 은 2의 배수입니다.');
  }

  print('');

  if (num % 3 == 0 && num % 2 == 0) {
    print('$num 은 2와 3의 배수 입니다.');
  }
  else {
    print('$num 은 2와 3의 배수가 아닙니다.');
  }

  print('');

  var score = 85;

  if (score >= 90) {
    print('A 학점입니다.');
  }
  else if (score >= 80) {
    print('B 학점입니다.');
  }
  else if (score >= 70) {
    print('C 학점입니다.');
  }
  else if (score >= 60) {
    print('D 학점입니다.');
  }
  else {
    print('F 학점입니다.');
  }


  print('\n ----- switch ~ case ----- \n');
//    switch ~ case : java 및 js 와 동일함
//    break 를 사용하지 않음

  var command = 'OPEN';

  //  dart 의 switch ~ case 문은 break; 이 없어도 정상 동작함
  switch (command) {
    case 'OPEN':
      print('영업중입니다.');
      print('break 가 없어도 정상 동작');
    case 'CLOSED':
      print('영업 종료합니다.');
    case 'PENDDING':
      print('대기중입니다.');
    case 'APPROVED':
      print('승인했습니다.');
    case 'DENIED':
      print('거부되었습니다.');
    default:
      print('잘못된 명령입니다.');
  }


  print('\n ----- if ~ case ----- \n');
//    기존 if 문에 switch ~ case 의 case 패턴이 추가된 형태
//    if 문에 패턴을 추가하고, 변수가 해당 패턴과 일치할 경우 코드 블럭을 실행
//    if 문의 조건식을 'if (비교할 변수 case 패턴)' 형태로 사용하고 패턴이 일치할 경우 패턴에 선언한 변수에 '비교할 변수'의 값을 입력하여 코드 블럭에 사용
//    if ~ case 문의 case 블럭과 else if 문의 블럭에도 사용할 수 있음

  var value = 10;

  // value 가 int 타입의 변수이면 사용 true, 아니면 false
  //  패턴에 포함된 number 는 value 의 값을 받아서 if ~ case 문 안에서만 사용
  if (value case int number) {
    print('변수의 value  값은 $value 입니다.');
    print('변수 number 의 값은 $number 입니다.');
    print('value == number : ${value == number}');
  }

  print("");

//    리스트 선언, 선언과 동시에 정수 데이터를 저장
//    dart 언어의 데이터 타입 추론 방식에 의해서 타입을 설정
//    var list = [10, 20, 30] => List<int> list = [10, 20, 30];
  var list = [10, 20, 30];

//    if ~ case 로 변수 list의 타입과 동일한 형태인지 확인
//    [int a, int b, int c] 은 [] 가 사용되어 List 로 인식
//    List의 3개의 요소가 각각 int 타입

  if (list case [int a, int b, int c]) {
    print('list 의 요소는 $a, $b, $c');
  }

  print('');

  var map = {'age': 25, 'name': '에스파 카리나'};

//   if ~ case 를 통한 map 타입의 패턴 확인
//    Map 타입에 대한 패턴 확인 시 key 명과 value 의 데이터 타입이 모두 일치해야 함
//    key 의 데이터 타입은 필요없음, key 의 이름이 필요
//    value 는 데이터 타입만 필요

  if (map case {'age': int a, 'name': String b}) {
    print('map의 요소는 $a, $b');
  }

  print('');

  var value2 = 20;

  //  if ~ else 문을 통한 패턴 확인
  if (value2 case int number) {
    print('value2 는 정수 : $number 입니다.');
  }
  else {
    print('value2 는 정수가 아닙니다.');
  }

  print('');

  List<int> list2 = [10, 20, 30, 40];

  //  else if 문을 통한 패턴 확인
  if (list2 case [int a]) {
    print('list2 의 요소가 1개인 리스트의 $a');
  }
  else if (list2 case [int a, int b]) {
    print('list2 의 요소가 2개인 리스트의 $a, $b');
  }
  else if (list2 case [int a, int b, int c]) {
    print('list2 의 요소가 3개인 리스트의 $a, $b, $c');
  }
  else {
    print('지정한 모든 패턴과 일치하지 않습니다.');
  }




}













