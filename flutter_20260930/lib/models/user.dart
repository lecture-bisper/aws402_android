//  File :  user.dart
//  User :  it
//  Date :  2026-09-30
//  Time :  오전 9:56
//  Desc :  

class User {
  User({required this.name, required this.phone, required this.email});

  final String name;
  final String phone;
  final String email;

  User copyWith({String? name, String? phone, String? email}) => User(
    name: name ?? this.name,
    phone: phone ?? this.phone,
    email: email ?? this.email
  );
}









