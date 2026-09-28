//  File :  a.dart.dart
//  User :  it
//  Date :  2026-09-28
//  Time :  오전 9:19
//  Desc :


//  base 제한자를 사용하여 상속만 할 수 있는 부모 클래스 선언
base class Parent1 {}

//  final 제한자를 사용하여 해당 클래스의 객체만 생성할 수 있도록 선언
final class Parent2 {}

//  같은 파일 안에서는 final 키워드를 사용한 부모 클래스를 상속받을 수 있음
//  자식 클래스는 base, final, sealed 키워드를 추가해야 함
base class Child21 extends Parent2 {}


//  interface 제한자를 사용하여 implements 를 통한 구현만 가능한 부모 클래스 선언
interface class Parent3 {}

//  같은 파일 안에서는 interface 제한자를 사용한 부모 클래스를 상속받을 수 있음
class Child31 extends Parent3 {}

//  같은 파일 안에서는 interface 제한자를 사용한 부모 클래스를 interface로 구현할 수 있음
class Child32 implements Parent3 {}


//  sealed 제한자를 사용하여 같은 파일에서만 사용이 가능하고 다른 파일에서는 사용을 못 하도록 하는 부모 클래스 선언
sealed class Parent4 {}

//  같은 파일 안에서는 sealed 제한자를 사용한 부모 클래스를 extends 로 상속받을 수 있음
class Child41 extends Parent4 {}

//  같은 파일 안에서는 sealed 제한자를 사용한 부모 클래스를 implements 로 구현할 수 있음
class Child42 implements Parent4 {}







