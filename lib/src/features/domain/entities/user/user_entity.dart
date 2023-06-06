// To parse this JSON data, do
//
//     final userDecodable = userDecodableFromMap(jsonString);

import 'dart:convert';

class UserEntity {
  UserEntity({
    this.localId,
    this.role,
    this.username,
    this.email,
    this.phone,
    this.dateOfBirth,
    this.startDate,
    this.photo,
    this.shippingAddress,
    this.billingAddress,
    this.idToken,
  });

  String? localId;
  String? role;
  String? username;
  String? email;
  String? phone;
  String? dateOfBirth;
  String? startDate;
  String? photo;
  String? shippingAddress;
  String? billingAddress;
  String? idToken;

  factory UserEntity.fromJson(String str) =>
      UserEntity.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory UserEntity.fromMap(Map<String, dynamic> json) => UserEntity(
        billingAddress: json["billingAddress"],
        dateOfBirth: json["dateOfBirth"],
        email: json["email"],
        idToken: json["idToken"],
        localId: json["localId"],
        phone: json["phone"],
        photo: json["photo"],
        role: json["role"],
        shippingAddress: json["shippingAddress"],
        startDate: json["startDate"],
        username: json["username"],
      );

  Map<String, dynamic> toMap() => {
        "billingAddress": billingAddress,
        "dateOfBirth": dateOfBirth,
        "email": email,
        "idToken": idToken,
        "localId": localId,
        "phone": phone,
        "photo": photo,
        "role": role,
        "shippingAddress": shippingAddress,
        "startDate": startDate,
        "username": username,
      };
}

enum UserRole { user, owner, admi, rider }

extension ParseToString on UserRole {
  String toShortString() {
    return toString().split('.').last;
  }
}
