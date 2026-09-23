//  File :  study03.dart
//  User :  it
//  Date :  2026-09-23
//  Time :  오후 1:55
//  Desc :  추상 클래스, 추상 메소드

//  추상클래스 : 자바와 같이 추상 메소드를 가지고 있는 클래스
//  추상 클래스는 abstract 키워드를 사용해야 함
abstract class Idol {

  final String name;
  final int membersCount;

  Idol({required this.name, required this.membersCount});

  //  추상 메소드
  //  메소드의 선언부만 존재하고, 몸체인 코드 블럭은 없는 메소드
  void sayName();
  void sayMembersCount();
}


//  추상 클래스를 상속 시 extends 나 implements 둘 다 사용 가능
//  extends 는 클래스로 상속, implements 는 인터페이스로 구현 임

//  추상 클래스인 Idol 을 인터페이스로 상속받아 구현하여 사용하는 GirlGroup 자식 클래스
class GirlGroup implements Idol {

  //  부모의 멤버를 오버라이딩하여 자신의 멤버로 변경해서 사용
  final String name;
  final int membersCount;

  //  멤버 변수가 자신의 것이기 때문에 super 가 아닌 this 를 사용
  GirlGroup({required this.name, required this.membersCount});

  //  메소드는 오버라이딩 필수이므로 상속받은 모든 메소드를 오버라이딩
  @override
  void sayName() {
    print('저는 여자 아이돌 $name 입니다.');
  }

  @override
  void sayMembersCount() {
    print('$name 의 멤버는 $membersCount 입니다.');
  }
}


//  추상 클래스 Idol 을 클래스로 상속받아 추상 메소드만 구현하여 사용
class BoyGroup extends Idol {

  //  추상 클래스 Idol 에서 상속해준 멤버 변수를 그대로 사용

  //  부모인 Idol 의 생성자를 호출하여 멤버 변수를 초기화
  BoyGroup({required super.name, required super.membersCount});

  //  상속받은 추상 메소드는 모두 오버라이딩하여 사용
  @override
  void sayName() {
    print('저는 남자 아이돌 $name 입니다.');
  }

  @override
  void sayMembersCount() {
    print('$name 의 멤버는 $membersCount 명 입니다.');
  }
}


class Counter {

  int num1 = 0; // 일반 멤버 변수
  static int num2 = 0; // static 멤버 변수

  //  일반 메소드
  void num1Print() {
    num1 = num1 + 10;
    print('num1 의 값 : $num1');
  }

  void num2Print() {
    //  일반 메소드에서 static 멤버 변수 사용
    num2 = num2 + 100;
    print('static num2 의 값 : $num2');
  }
}

void main() {

  print('\n ----- 추상 클래스, 추상 메소드 -----\n');

  GirlGroup blackPink = GirlGroup(name: '블랙핑크', membersCount: 4);
  blackPink.sayName();
  blackPink.sayMembersCount();

  print('');

  BoyGroup bts = BoyGroup(name: 'BTS', membersCount: 7);
  bts.sayName();
  bts.sayMembersCount();

  print('\n ----- 캐스케이드 연산자 -----\n');
//  캐스케이드 연산자 : 객체 생성 후 '객체명.멤버명' 으로 사용하는 것을 '..멤버명' 으로 사용하는 연산자
//  객체 생성 시 생성자 뒤에 ';' 을 생략
//  '..멤버명' 을 연속으로 사용함
//  '..마지막멤버' 사용 후 ';' 을 입력

  //  일반적인 방식
  GirlGroup idol1 = GirlGroup(name: '에스파', membersCount: 4);
  idol1.sayName();
  idol1.sayMembersCount();

  print('');

  //  캐스케이드 연산자 사용
  GirlGroup idol2 = GirlGroup(name: '리센느', membersCount: 5)
  ..sayName()
  ..sayMembersCount();


  print('\n ----- static 멤버 -----\n');

  Counter c1 = Counter();
  Counter c2 = Counter();
  Counter c3 = Counter();

  print('c1의 num1 : ${c1.num1}');
  print('c2의 num1 : ${c2.num1}');
  print('c3의 num1 : ${c3.num1}');

  print('');

  c1.num1 = 10;
  c2.num1 = 100;
  c3.num1 = 1000;

  print('c1의 num1 : ${c1.num1}');
  print('c2의 num1 : ${c2.num1}');
  print('c3의 num1 : ${c3.num1}');

  print('');

  //  static 은 객체의 멤버가 아닌 클래스의 멤버이기 때문에 '클래스명.멤버명' 으로 접근해야 함
  Counter.num2 = 200;

  //  num2 는 static 멤버이므로 클래스 명으로만 접근 가능
  // c1.num2 = 20;
  print('Counter 의 멤버 num2 : ${Counter.num2}');

  print('');

  print('c1의 num1Print() 사용');
  c1.num1Print();
  print('c2의 num1Print() 사용');
  c2.num1Print();
  print('c3의 num1Print() 사용');
  c3.num1Print();

  print('');

  print('c1의 num2Print() 사용');
  c1.num2Print();
  print('c2의 num2Print() 사용');
  c2.num2Print();
  print('c3의 num2Print() 사용');
  c3.num2Print();


}









