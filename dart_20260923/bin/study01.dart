
//  dart 언어의 클래스 멤버 변수는 기본적으로 접근제한자가 public 으로 되어 있어 어디서나 접근이 가능함
//  dart 언어의 클래스 멤버 변수를 _변수명으로 설정하여 접근제한자를 private 으로 설정하여도 같은 파일 안에서는 접근이 가능함
//  현재 Flutter 의 최신 트랜드는 클래스의 멤버 변수에 final 키워드를 사용하여 모두 상수로 만들어서 사용함
//  객체가 한번 생성된 후 수정이 불가능함
//  copyWith 라는 방식을 사용하여 생성된 객체의 데이터 수정이 필요할 경우 새로 객체를 생성하여 사용함
import 'dart:vmservice_io';

class Idol {

  //  final 키워드를 사용하여 멤버 변수를 상수로 선언
  // 멤버 변수 (필드)
  final String name;
  final int age;
  final String email;

  //  required 를 상용하여 반드시 모든 멤버 변수에 대한 데이터를 입력 요구
  //  네임드 매개변수를 사용한 생성자, 간소화 방식 사용
  Idol({required this.name, required this.age, required this.email});

  //  메소드
  void sayName() {
    print('저는 $name 이고, $age 살 입니다. 이메일은 $email 입니다.');
  }

  //  copyWith 라는 메소드를 만들어서 해당 메소드를 호출하면 현재 클래스에 대한 수정된 데이터의 클래스 객체를 반환함
  //  네임드 매개변수 방식을 사용, 모든 매개변수는 'null 허용' 으로 설정
  //  반환 타입은 현재 클래스로 지정
  Idol copyWith({String? name, int? age, String? email}) {
    //  현재 클래스의 객체를 생성하여 반환
    return Idol(
      //  생성자 호출 시 네임드 매개변수 방식으로 호출
      //  ?? 연산자를 사용하여 새 값이 있을 경우 새 값을 사용
      //  새 값이 없으면 기본값으로 기존의 데이터를 사용
      name: name ?? this.name,
      age: age ?? this.age,
      email: email ?? this.email
    );
  }
}


//  부모 클래스로 사용하는 클래스
class Idol2 {

  final String name;
  final int membersCount;

  //  기본 방식의 생성자
  // Idol2(String name, int membersCount) : this.name = name, this.membersCount = membersCount;

  //  간소화된 생성자
  // Idol2(this.name, this.membersCount);

  //  네임드 매개변수를 사용하는 기본 생성자
  Idol2({required this.name, required this.membersCount});

  void sayName() {
    print('저는 $name 입니다.');
  }

  void sayMembersCount() {
    print('$name 멤버는 $membersCount 명 입니다.');
  }
}


//  Idol2 를 상속받아 사용하는 자식 클래스
class BoyGroup extends Idol2 {

  //  dart 언어에서도 객체 생성 시 상속 관계에 있는 부모 생성자를 먼저 호출해야 함
  //  상속받을 경우 부모 생성자와 자식 생성자의 형식을 통일하는 것이 좋음
  //  super : 부모 객체를 의미하는 키워드
  //  this : 객체 자신을 의미하는 키워드

  //  기본 방식의 생성자, 부모 생성자를 super() 로 호출
  // BoyGroup(String name, int membersCount) : super(name, membersCount);

  //  부모 클래스의 생성자는 네임드 매개변수 방식을 사용하고, 자신은 기본 방식 생성자를 사용할 경우
  // BoyGroup(String name, int membersCount) : super(name: name, membersCount: membersCount);

  //  간소화된 생성자, super 키워드로 부모 클래스의 멤버 변수 호출
  // BoyGroup(super.name, super.membersCount);

  //  네임드 매개변수를 사용하는 기본 생성자
  BoyGroup({required super.name, required super.membersCount});

  void sayMale() {
    print('저희는 남자 아이돌 입니다.');
  }
}


//  Idol2 를 상속받아 사용하는 자식 클래스
class GirlGroup extends Idol2 {

  GirlGroup({required super.name, required super.membersCount});

  //  Java 와 같이 메소드 오버라이딩이 가능함
  //  Java 와 달리 어노테이션이 모두 소문자 임
  //  상속받은 메소드의 내용을 오버라이딩으로 수정하여 사용
  @override
  void sayName() {
    print('저는 여자 아이돌 $name 입니다.');
  }
}


//  dart 언어의 클래스는 클래스이면서 인터페이스임
//  자식 클래스에서 extends 를 사용 시 클래스 상속으로 동작
//  자식 클래스에서 implements 를 사용 시 인터페이스의 구현으로 동작
//  인터페이스 구현 시 부모의 멤버를 반드시 오버라이딩 해야 함

//  부모 클래스 Idol2 를 인터페이스로 상속받아 구현한 자식 클래스 GirlGroup2
class GirlGroup2 implements Idol2 {

  final String name;
  final int membersCount;

  //  부모인 Idol2 에 멤버 변수 name, membersCount 가 존재하지만 Idol2 를 인터페이스로 상속받았기 때문에 자식 클래스인 GirlGroup2 에서 부모인 Idol2 의 객체를 생성할 수 없어서 Idol2 의 멤버 변수인 super.name, super.membersCount 에 접근할 수 없음
  GirlGroup2({required this.name, required this.membersCount});

  //  Idol2 를 인터페이스로 상속 받았기 때문에 모든 멤버 메소드를 모두 오버라이딩하여 사용해야 함
  @override
  void sayName() {
    print('저는 한국의 대표 여자 아이돌 $name 입니다.');
  }

  @override
  void sayMembersCount() {
    print('저희 팀 $name 의 멤버는 $membersCount 명 입니다.');
  }
}


void main(List<String> arguments) {

  print('\n ----- final 멤버 변수 사용 시 수정 불가 -----\n');

  Idol idol = Idol(name: '지수', age: 31, email: 'jisu@bitc.ac.kr');
  idol.sayName();

  //  Idol 클래스의 멤버 변수는 final 로 지정하여 수정 불가
  // idol.name = '카리나';
  // idol.age = 26;
  // idol.email = 'karana@bitc.ac.kr';
  // idol.sayName();

  print('\n ----- copyWith 방식 사용 -----\n');

  idol = idol.copyWith(name: '카리나', age: 26, email: 'karina@bitc.ac.kr');
  idol.sayName();

  idol = idol.copyWith(name: '유지민');
  idol.sayName();

  print('\n ----- 그냥 새 객체 생성 시 -----\n');

  //  기존의 Idol 클래스 타입의 객체 idol 에 Idol 클래스 타입의 새 객체를 저장
  idol = Idol(name: '제나', age: 17, email: 'jena@bitc.ac.kr');
  idol.sayName();

  //  Idol 클래스의 생성자는 3개의 매개변수를 요구하는데, 객체 생성 시 2개의 데이터만 제공하여 오류 발생
  // idol = Idol(name: '메이', age: 18);


  print('\n ----- 클래스 상속 -----\n');

  Idol2 idol2 = Idol2(name: 'bts', membersCount: 5);
  idol2.sayName();
  idol2.sayMembersCount();
  //  sayMale() 메소드는 자식 클래스인 BoyGroup 의 전용 메소드
  // idol2.sayMale();

  print('');

  // BoyGroup bts = BoyGroup('bts', 5);
  BoyGroup bts = BoyGroup(name: 'bts', membersCount: 5);
  bts.sayName();
  bts.sayMembersCount();
  bts.sayMale();

  print('');

  GirlGroup rescene = GirlGroup(name: '리센느', membersCount: 5);
  //  상속받은 메소드를 오버라이딩하여 재선언 후 사용
  rescene.sayName();
  //  상속받은 메소드를 그대로 사용
  rescene.sayMembersCount();

  print('\n ----- 인터페이스 ----- \n');

  GirlGroup2 ive = GirlGroup2(name: '아이브', membersCount: 6);
  ive.sayName();
  ive.sayMembersCount();
}











