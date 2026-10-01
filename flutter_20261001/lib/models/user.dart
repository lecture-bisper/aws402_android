//  File :  user.dart
//  User :  it
//  Date :  2026-10-01
//  Time :  오후 12:26
//  Desc :  

class User {
  final String name;
  final String address;

  User({required this.name, required this.address});

  User copyWith(String? name, String? address) {
    return User(
      name: name ?? this.name,
      address: address ?? this.address
    );
  }
}









