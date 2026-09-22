//  File :  Idol8.dart
//  User :  it
//  Date :  2026-09-22
//  Time :  오후 4:13
//  Desc :  외부 클래스 파일

class Idol8 {

  final String name;
  final int age;
  final String _email = 'iu8@bitc.ac.kr';

  Idol8(this.name, this.age);

  String get email {
    return _email;
  }

  void sayName() {
    print('저의 이름은 $name 이고, 나이는 $age 이며, 이메일은 $_email 입니다.');
  }

}











