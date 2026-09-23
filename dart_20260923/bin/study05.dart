//  File :  study05.dart
//  User :  it
//  Date :  2026-09-23
//  Time :  오후 3:30
//  Desc :  dart 3 의 추가 내용

void main() {

  print('\n ----- 레코드 사용하기 ----\n');

//   record : 클래스나 컬렉션 없이 간단하게 여러개의 데이터를 전달하고자할 경우 사용하는 데이터 타입
//    키워드 없이 () 를 사용하고, 여러개의 데이터를 ',' 로 구분하여 저장
//    생성 후 읽기 전용(수정 불가)
//    포지션 기반 방식과 네임드 기반 방식으로 사용 가능
//    포지션 기반 방식 사용 시 '변수명.$index' 로 접근 가능(1부터 시작)
//    네임드 기반 방식 사용 시 '변수명.key' 로 접근 가능

//    함수의 매개변수나 반환값으로 여러개의 데이터를 전달하고자할 경우 클래스나 컬렉션을 사용하는 것보다 간편함
//    여러개의 데이터를 임시로 하나의 묶음으로 만드는 데이터 타입

  //  포지션 기반 레코드 사용
  var person = ('송하영', 28);
  print(person.$1);
  print(person.$2);
  // person.$1 = '박지원'; // record 는 읽기 전용으로 수정 불가

  //  네임드 기반 레코드 사용
  var person2 = (name: '박지원', age: 28);
  print(person2.name);
  print(person2.age);

  print('\n----- 구조분해할당 -----\n');
//   구조분해할당 : js ES6의 구조 분해 할당과 비슷한 데이터 대입 방식
//    record, List, Map, 클래스에서 사용 가능
//    List의 구조 분해 할당은 [] 를 사용
//    Map 의 구조 분해 할당은 {} 를 사용
//    클래스의 구조 분해 할당은 생성자를 사용

  print('\n----- record 의 구조분해할당 -----');
  //  변수에 레코드 타입의 데이터 저장
  //  변수에 var 를 사용하여 자동 추론 방식 사용
  var result = ('다니엘', 25, '가수');

  var name = result.$1;
  var age = result.$2;
  var job = result.$3;

  print('이름 : $name, 나이 : $age, 직업 : $job');

  var (name2, age2, job2) = ('하니', 25, 'idol');
  print('이름 : $name2, 나이 : $age2, 직업 : $job2');

  print('\n ----- 리스트의 구조분해할당 -----');

  final List<String> newJeans = ['민지', '하니', '해린', '혜인'];
  print('newJeans 의 멤버 : $newJeans');

//   리스트의 데이터를 하나씩 출력하는 일반적인 방법
  final String minji = newJeans[0];
  final String hani = newJeans[1];
  final String hearin = newJeans[2];
  final String heyin = newJeans[3];

  print('newJeans 의 멤버 : $minji, $hani, $hearin, $heyin');

//    리스트의 구조 분해 할당
//    js ES6 의 배열 구조 분해 할당과 동일함
  final [minji2, hani2, hearin2, heyin2] = newJeans;
  print('newJeans 의 멤버 : $minji2, $hani2, $hearin2, $heyin2');

  print('\n ----- 스프레드 연산자를 사용한 구조 분해 할당 -----');
//    ... : 스프레드 연산자, 구조 분해 할당 시 나머지 모든 내용을 의미하는 연산자

  const List<int> numbers = [10, 20, 30, 40, 50, 60, 70, 80, 90];

  //  구조 분해 할당을 사용하여 '=' 연산자 왼쪽에 선언한 x, y, z 변수에 각각 데이터를 저장하고, 남은 데이터를 스프레드 연산자를 사용하여 모두 출력
  //  x, y, z 를 제외한 나머지는 저장할 변수를 지정하지 않아서 데이터가 버려짐
  final [x, y, ..., z] = numbers;
  print('변수 x : $x');
  print('변수 y : $y');
  print('변수 z : $z');

  print('');

  //  스프레드 연산자를 사용하여 리스트의 남은 내용을 middle 변수에 저장
  final [a, b, ...middle, j] = numbers;
  print('변수 a : $a');
  print('변수 b : $b');
  print('변수 j : $j');
  print('변수 middle : $middle');

  print('\n ----- Map 의 구조 분해 할당 -----');

  final Map won0 = {'name': '장원영', 'age': 22, 'job': '아이돌'};

//   Map 타입의 데이터를 변수로 출력하는 일반적인 방식
  var won0name = won0['name'];
  var won0age = won0['age'];
  var won0job = won0['job'];

  print('이름 : $won0name, 나이 : $won0age, 직업 : $won0job');

  //  Map 타입의 구조 분해 할당
  //  Map 타입의 key 명과 일치하도록 설정, 원하는 변수명을 설정
  //  Map 타입은 key 를 기준으로 하기 때문에 순서와 상관없음
  var {'age': won0age2, 'job': won0job2, 'name': won0name2} = won0;

  print('이름 : $won0name2, 나이 : $won0age2, 직업 : $won0job2');

  print('\n----- 클래스의 구조 분해 할당 -----\n');

  final yena = Idol(name: '최예나', age: 26, job: '아이돌');
  yena.printInfo();

  // 클래스의 구조 분해 할당
  //  클래스의 기본 생성자 구조와 동일하게 입력
  //  key 이름을 클래스의 멤버 변수명과 동일하게 사용
  final Idol(name: yenaName, age: yenaAge, job: yenaJob) = yena;
  print('이름 : $yenaName, 나이 : $yenaAge, 직업 : $yenaJob');
}

class Idol {
  final String name;
  final int age;
  final String job;

  Idol({required this.name, required this.age, required this.job});

  void printInfo() {
    print('이름 : $name, 나이 : $age, 직업 : $job');
  }
}











