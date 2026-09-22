
void main(List<String> arguments) {
  //  주석 : 자바 및 자바스크립트와 동일
  //   //, /* ~ */, ///

  //  print() : 다트 언어에서 제공하는 콘솔에 결과를 출력하는 명령
  print('다트 프로젝트 실행!!');
  print('처음 만들어보는 dart 프로그램!!');

  print('\n ----- 변수 선언(var, dynamic) -----\n');
  
//   변수 선언 : var, dynamic 키워드를 사용하여 변수를 선언
//   var : 일반적인 변수를 선언하는 키워드
//    변수 선언 시 모든 데이터 타입을 다 저장할 수 있음
//    타입 추론 방식을 사용하기 때문에 변수에 데이터가 저장된 후 데이터 타입을 확인
//    dart 는 js와 달리 변수에 데이터가 한번 저장되면 데이터 타입이 고정됨(다른 데이터 타입의 값을 저장할 수 없음)

  print('----- var 사용 -----');
  var a = "문자열";
  print(a);
  a = "다른 문자열";
  print(a);

  //  var 키워드를 사용한 변수에 가장 먼저 문자열을 입력하여 데이터 타입이 string 으로 고정된 변수에 정수 타입의 데이터를 저장하려고 하기 때문에 오류가 발생
  // a = 100;
  
//   dynamic : var와 같이 일반적 변수를 선언하는 키워드
//      var와 달리 한번 데이터가 저장되어 데이터 타입 추론으로 인하여 변수의 타입이 확인된 후에도 다른 데이터 타입을 저장할 수 있음

  print('\n----- dynamic 사용 -----');
  dynamic b = "문자열";
  print(b);
  b = "또 다른 문자열";
  print(b);
  // dynamic 키워드를 사용하여 선언한 변에서 먼저 문자열을 저장하고, 나중에 정수 타입의 데이터를 저장하여도 상관없음(데이터 타입이 고정되지 않음)
  b = 100;
  print(b);

  print('\n ----- final/const 사용 -----\n');

//   상수 선언 : final과 const 키워드를 사용하여 수정이 불가능한 상수를 선언할 수 있음
//    모든 데이터 타입을 다 저장할 수 있음
//    타입 추론방식으로 데이터가 저장된 후 데이터 타입을 확인

//  final : 런타임 상수, 실행을 하기 전까지는 값 확인을 하지 않음
//    프로그램을 실행해야 값을 확인할 수 있음

//  const : 빌드 타임 상수, 컴파일 시 값을 바로 확인할 수 있음

  //  final 은 프로그램 실행 도중 발생하는 연산을 통해서 정해지는 값을 상수로 사용하고자 할 경우 사용
  final DateTime now1 = DateTime.now();
  print(now1);
  //  final 을 통해서 생성된 상수의 값을 수정할 수 없음
  // now1 = DateTime.now();

  //  const 는 소스코드에 선언과 동시에 값이 결정되는 리터럴 데이터를 상수로 사용하고자 할 경우 사용
  // const DateTime now2 = DateTime.now();
  // print(now2);
  const c = 300;
  print(c);
  //  상수이기 때문에 변경 불가능
  // c = 400;

  print('\n ----- 데이터 타입 -----\n');
//   데이터 타입은 기본적으로 String(문자열), int(정수), double(실수), bool(논리타입) 4가지가 제공됨
//   var 혹은 dynamic 키워드를 사용하여 변수를 선언해도 상관없고, 데이터 타입을 직접 입력하여 변수를 선언해도 상관없음
  print('\n ----- 기본 타입 -----');
  String name = '문자열 타입';
  int isInt = 100;
  double isDouble = 3.14;
  bool isBool = true;

  print(name);
  print(isInt);
  print(isDouble);
  print(isBool);

  print('\n ----- 컬렉션 -----');

//   자바의 컬렉션 과 비슷한 타입 (List, Map, Set)
//  List : 자바의 ArrayList 와 동일한 형태의 데이터 타입
//    [] 기호를 사용하고 데이터의 구분은 , 로 진행함
//    index 가 있으며, 0 부터 시작
//    리스트명[index] 를 통해서 원하는 데이터에 접근 가능
//    제네릭 <> 을 사용하여 데이터 타입을 명시할 수 있음

//    관련함수
//    add() : 기존 리스트에 데이터를 추가
//      리스트명.add(추가할 데이터);

  print('\n----- add() 사용하기 -----');
  List<String> blackPinkList = ['리사', '지수', '제니', '로제'];
  print('원본 리스트 : ');
  print(blackPinkList);
  blackPinkList.add('플러터');
  print(blackPinkList);
  blackPinkList.add('dart');
  print('데이터 추가 후 $blackPinkList');

//    insert() : 기존 리스트에 데이터를 추가
//      첫번째 매개변수에 추가할 index 를 지정하고, 두번째 매개변수로 추가할 데이터를 입력
//      리스트명.insert(index, 데이터);
  print('\n----- insert() 사용하기 -----');
  List<String> rescene = ['원이', '미나미', '리브'];
  print('원본 리스트 ${rescene}');
  rescene.insert(1, '메이');
  rescene.insert(3, '제나');
  print('데이터 추가 후 : $rescene');

//   remove(), removeAt() : 기존 리스트에서 지정한 데이터를 삭제
//    remove() 는 지정한 데이터를 기반으로 삭제
//    removeAt() 는 지정한 index 의 데이터를 삭제
  print('\n----- removeAt(), remove() 사용하기 -----');
  List<String> fromis9 = ['송하영', '박지원', '이채영', '이나경', '백지헌', '장규리', '이새롬', '노지선', '이서연'];
  print('원본 리스트 : $fromis9');
  fromis9.removeAt(6);
  fromis9.removeAt(5);
  print('removeAt() 후 리스트 : $fromis9');
  fromis9.remove('노지선');
  fromis9.remove('이서연');
  print('remove() 후 리스트 : $fromis9');

  print('\n ----- where() -----');
//    where() : 리스트에 저장된 데이터를 순차적으로 출력하여 특정 조건에 맞는 값만 필터링한 후 저장하여 마지막에 반환하는 명령어
//      js ES6 의 map() 함수와 비슷하지만 콜백함수의 반환값이 특정 조건에 맞는 값만 저장하고, 나머지는 버려지는 형태의 함수
  //  리스트 선언
  List<String> aespa = ['카리나', '지젤', '윈터', '닝닝'];

  //  리스트의 요소를 하나씩 출력하는 도중 데이터가 조건과 맞을 경우 임시 리스트에 저장
  final newList = aespa.where((name) => name == '카리나' || name == '윈터');
  //  모든 리스트의 요소가 다 출력 시 반복문은 종료, 종료와 동시에 아까 저장한 리스트의 요소를 묶어서 출력

  print(newList);
  print(newList.toList());


//    map() : where() 비슷한 형태의 함수, 리스트의 요소를 하나씩 출력, 콜백 함수의 매개변수로 연산식을 진행 후 그 결과를 List 저장하여 반환
//    where() 은 특정 조건이 맞을 때만 저장
//    map() 은 리스트에서 출력된 모든 데이터에 대해서 연산을 진행 후 각각 출력된 데이터를 List로 저장
  print('\n -----map() -----\n');
  List<String> ive = ['안유진', '가을', '레이', '장원영', '리즈', '이서'];
  print('원본 리스트 ive : $ive');

  //  리스트에서 데이터를 하나씩 출력 후 출력된 데이터의 앞에 '아이브 '라는 문자열을 붙여서 출력용 리스트에 저장하여 마지막에 리스트를 반환
  final newIve = ive.map((name) => '아이브 $name');

  print(newIve);
  print(newIve.toList());


//    reduce() : where() 이나 map() 처럼 리스트의 요소를 하나씩 출력하여 연산 후 반환
//      리스트의 요소를 출력할 때마다 값을 쌓아가는 형식임
//      출력되는 데이터 타입이 리스트의 멤버 타입과 동일함
//      reduce() 의 매개변수로 사용되는 함수의 매개변수가 2개임
//      첫번째 매개변수는 이전값이고, 두번째 매개변수가 현재 값임
//      첫번째 루프에서는 0번 index 값을 첫번째 매개변수에 전달하고, 1번 index 값을 두번째 매개변수에 전달
//      두번째 루프 이후에서는 첫번째 매개변수에 이전 루프에서 반환한 값을 전달하고, 두번째 매개변수에 리스트의 다음 요소를 출력함
  print('\n ----- reduce() ----- \n');
  print('원본 리스트 : $rescene');

  final allMember = rescene.reduce((prev, current) => prev + ', ' + current);
  print('reduce() 사용 후 ${allMember}');


//    fold() : reduce() 와 동일한 기능을 하는 함수, 출력하는 데이터 타입을 사용자가 설정할 수 있음
//      첫번째 루프 시 fold() 함수의 첫번째 매개변수를 초기값으로 사용함
//      나머지는 reduce() 와 동일한 형태로 사용
//      리스트명.fold<출력할타입>(초기값, (이전값, 현재값) => 이전값과 현재값을 연산)
  print('\n ----- fold() -----\n');
  print('원본 리스트 : $aespa');

  final result = aespa.fold<int>(0, (prev, current) => prev + current.length);

  print('fold() 사용 후 : ${result}');


//  Map : 자바의 HashMap 타입과 비슷한 데이터 타입(js의 object)
//    key 와 value 가 1:1로 연동되어 있는 데이터 타입
//    {} 를 사용하여 Map 타입의 선언, key 와 value의 구분은 : 으로 구분하고, 각 데이터의 구분은 , 로 구분함
//    map변수명[key명] 으로 데이터에 접근
  print('\n ----- Map 사용하기 -----\n');
  Map<String, String> dic = {'harry potter': '해리 포터', 'ron weasley' : '론 위즐리', 'hermione granger' : '헤르미온느 그레인저'};

  //  [key명] 을 사용하여 지정한 key 와 연동된 value 를 출력
  print(dic['harry potter']);
  //  모든 key를 출력
  print(dic.keys);
  //  모든 value를 출력
  print(dic.values);


//  Set : 자바의 HashSet 과 비슷한 데이터 타입
//    중복이 없는 데이터 타입
//    Map 과 동일하게 {} 기호를 사용하지만 key 가 없이 value 만 있는 데이터 타입
//    contains() 함수를 사용하여 저장된 데이터가 있는지 여부를 확인 후 사용
//    toList() 를 사용하여 Set 타입의 데이터를 List 로 변환하여 사용할 수 있음
//    Set.from() 을 사용하여 List 타입의 데이터를 Set 타입으로 변환할 수 있음
  print('\n ----- Set 사용하기 -----\n');
  Set<String> blackPink = {'로제', '지수', '리사', '제니', '리사', '로제'};
  print('Set 으로 만들어진 데이터 : $blackPink');
  print(blackPink.contains('로제'));
  print(blackPink.toList());

  List<String> blackPink2 = ['로제', '지수', '제니', '제니', '리사', '지수'];
  print(Set.from(blackPink2));


//   enum : 한 변수의 값을 지정한 몇가지로 제한하는 기능
//      String 로 완전히 대체할 수 있지만 enum 을 사용 시 자동 완성이 지원되고, 어떤 선택지가 있는지 명확히 정의할 수 있음
  print('\n----- enum -----\n');

  Status state = Status.approved;
  //  문자열 안에 '$변수명' 을 사용하여 템플릿 문자열 형태로 사용 가능
  print('현재 상태 : $state');
  state = Status.pending;
  //  ${변수명} 은 ${} 안에서 간단한 연산식을 사용 시 ${} 를 사용함
  //  단순히 변수의 값만 출력 시 '$변수명' 만 사용
  print('변경된 상태 : ${state}');
}

//  enum 타입 설정
enum Status {
  approved,
  pending,
  rejected,
}











