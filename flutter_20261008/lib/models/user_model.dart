//  File :  user_model.dart
//  User :  it
//  Date :  2026-10-08
//  Time :  오후 4:14
//  Desc :  

class UserModel {
  int? id;
  String? name;
  String? address;

  Map<String, Object?> toMap() {
    var map = <String, Object?>{"name": name, "address": address};

    if (id != null) {
      map["id"] = id;
    }

    return map;
  }

  UserModel.fromData(this.name, this.address);

  UserModel.fromMap(Map<String, Object?> map) {
    id = map["id"] as int;
    name = map["name"] as String;
    address = map["address"] as String;
  }
}









