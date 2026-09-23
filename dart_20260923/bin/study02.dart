//  File :  study02.dart
//  User :  it
//  Date :  2026-09-23
//  Time :  오후 12:21
//  Desc :  mixin 사용하기


mixin Flyable {

  int wingSpeed = 10;

  void fly() {
    print('파닥파닥 날아갑니다. (속도 : $wingSpeed)');
  }

  void output() {
    print('Flyable 의 output 메소드');
  }
}


//  Animal 클래스를 상속받은 자식 클래스만 Runable 믹스인을 상속받을 수 있음
mixin Runable on Animal {

  void run() {
    print('호다닥 달려갑니다.');
  }

  void output() {
    print('Runable 의 output 메소드');
  }
}


class Animal {

  final String name;

  Animal({required this.name});
}


class Dog extends Animal with Flyable, Runable {

  Dog({required super.name});

  int wingSpeed = 10;

  //  mixin 에서 상속받은 메소드를 오버라이딩하여 사용
  @override
  void fly() {
    print('푸드득 날아갑니다. (속도 : $wingSpeed)');
  }
}


//  다중 상속과 상속받은 메소드에 대한 오버라이딩 없이 사용
//  mixin 인 Flyable과 Runable 을 상속받은 Cat 클래스
// class Cat with Flyable, Runable {
class Cat with Flyable {

  // Cat({required super.name});

  // @override
  // int wingSpeed = 10;
  //
  // @override
  // void fly() {
  //   print('$name 파닥파닥 날아갑니다. (속도 : $wingSpeed)');
  // }
}


void main() {
  print('\n ----- mixin 사용하기 -----\n');

//  mixin : 여러 클래스에서 필요한 기능만 가져와서 사용하는 기술
//  class 대신 mixin 키워드를 사용하여 선언, 클래스 선언 방법과 비슷
//  자식 클래스에 상속 시 extends 대신 with 키워드를 사용
//  인터페이스처럼 다중 상속이 가능하며, ',' 기호로 구분
//  여러개의 mixin 을 상속받아 사용 시 동일한 이름의 메소드가 존재할 수 있음
//    - 마지막에 상속받은 mixin 의 메소드가 상속되어 실행됨

//  mixin ... on : on 으로 지정된 부모 클래스를 상속받은 자식 클래스만 현재 mixin 을 상속받아 사용할 수 있음

//  mixin 사용 이유 :
//  class 상속 시 멤버를 상속받아 그대로 사용 가능하지만, 다중 상속이 불가능
//  interface 는 다중 상속이 가능하지만 상속받은 모든 멤버를 오버라이딩하여 구현해야 함
//  interface 를 상속받는 여러 자식 클래스들은 상속받은 멤버를 각각 구현해야함
//  mixin 을 사용하면, 인터페이스의 다중 상속이 가능하고, 클래스처럼 상속받은 멤버를 오버라이딩할 필요가 없음

  Cat cat = Cat();
  // cat.run();
  cat.fly();
  cat.output();

  print('');

  Dog dog = Dog(name: '크립토');
  dog.run();
  dog.fly();
  dog.output();
}











