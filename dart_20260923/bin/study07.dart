//  File :  study07.dart
//  User :  it
//  Date :  2026-09-28
//  Time :  오전 9:16
//  Desc :  dart 3 에서 추가된 클래스 제한자

//  클래스 제한자 : dart 3 에서 클래스 제한자가 추가됨
//    클래스 제한자는 class 키워드 앞에 입력하여 사용
//    base, final, interface, sealed, mixin 이 추가됨

//  base 제한자 : base 사용 시 해당 클래스는 상속만 할 수 있는 클래스가 됨
//    base 키워드 사용 시 base 클래스의 기능을 강제함
//    base 키워드는 인터페이스가 될 수 없음
//    base 클래스가 아닌 자식 클래스는 꼭 base, final, sealed 를 함께 사용해야 함

//  외부 파일을 import
import 'a.dart';

//  base 클래스에 대한 객체 생성 가능
Parent1 parent1 = Parent1();

//  base 클래스를 상속받았을 경우 자식 클래스도 base 클래스가됨
base class Child11 extends Parent1{}

//  base, sealed, final 제한자 중 하나가 꼭 필요함
// class Child12 extends Parent{}

//  Parent 클래스는 base 클래스이므로 implements 를 통한 구현이 불가능함
// class Child13 implements Parent{}


// final 제한자 : final 제한자 사용 시 같은 파일에서는 상속과 재정의가 가능하지만 외부 파일에서는 상속과 재정의가 불가능함
//    base 제한자의 기능을 모두 포함함
//    java 에서 class 에 final 키워드를 사용한 것과 동일한 기능

//  final 키워드를 사용한 클래스에 대한 객체 생성 가능
Parent2 parent2 = Parent2();

//  외부 파일을 import 하여 가져온 final 제한자를 사용한 클래스는 상속받을 수 없음
// class Child21 extends Parent2 {}

//  외부 파일을 import 하여 가져온 final 제한자를 사용한 인터페이스도 구현할 수 없음
// class Child22 implements Parent2 {}


//  interface 제한자 : interface 제한자를 사용한 클래스는 외부 파일에서는 상속은 되지 않고, implements 를 통한 구현만 가능하도록 제한함 (base 제한자와 반대)
//    java 의 interface 와 비슷한 기능을 하도록 제한함

//  interface 제한자를 사용한 클래스에 대한 객체 생성 가능
Parent3 parent3 = Parent3();

//  외부 파일을 import 하여 가져온 interface 제한자를 사용한 클래스를 상속받을 수 없음
// class Child31 extends Parent3 {}

//  외부 파일을 import 하여 가져온 interface 제한자를 사용한 인터페이스를 구현할 수 있음
class Child32 implements Parent3 {}



//  sealed 제한자 : sealed 제한자를 사용한 클래스는 외부 파일에서 상속, 재정의, 객체화 할 수 없도록 제한함
//    같은 파일 안에서만 사용하고 외부에서는 사용하지 못 하도록 막음

//  외부 파일을 import 하여 가져온 sealed 제한자를 사용한 클래스의 객체를 생성할 수 없음
// Parent4 parent4 = Parent4();
//  외부 파일을 import 하여 가져온 sealed 제한자를 사용한 클래스 타입의 변수는 생성할 수 있음
Parent4? parent4 = null;

//  외부 파일을 import 하여 가져온 sealed 제한자를 사용한 클래스를 상속받을 수 없음
// class Child41 extends Parent4 {}

//  외부 파일을 import 하여 가져온 sealed 제한자를 사용한 인터페이스를 implements 구현할 수 없음
// class Child42 implements Parent4 {}


//  mixin 제한자 : dart 3 부터는 mixin 을 클래스에도 사용 가능함
//    일반 mixin 의 기능을 하면서 부모 클래스로서 상속도 가능함

//  클래스에 mixin 제한자를 사용함
mixin class MixinEx1 {}

mixin class MixinEx2 {}

class Parent5 {}

//  mixin 클래스를 부모 클래스로서 상속받은 자식 클래스, 클래스 상속이기 때문에 단일 상속
class Child51 extends MixinEx1 {}

//  mixin 클래스를 mixin 으로 상속받은 클래스, mixin 이기 때문에 다중 상속 가능
class Child52 extends Parent5 with MixinEx1, MixinEx2 {}












