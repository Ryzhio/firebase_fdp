// To parse this JSON data, do
//
//     final signInDecodable = signInDecodableFromMap(jsonString);

import 'dart:convert';

class SignInDecodable {
  SignInDecodable({
    this.kind,
    this.localId,
    this.email,
    this.displayName,
    this.idToken,
    this.registered,
    this.refreshToken,
    this.expiresIn,
  });

  String? kind;
  String? localId;
  String? email;
  String? displayName;
  String? idToken;
  bool? registered;
  String? refreshToken;
  String? expiresIn;

  factory SignInDecodable.fromJson(String str) =>
      SignInDecodable.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SignInDecodable.fromMap(Map<String, dynamic> json) => SignInDecodable(
        kind: json["kind"],
        localId: json["localId"],
        email: json["email"],
        displayName: json["displayName"],
        idToken: json["idToken"],
        registered: json["registered"],
        refreshToken: json["refreshToken"],
        expiresIn: json["expiresIn"],
      );

  Map<String, dynamic> toMap() => {
        "kind": kind,
        "localId": localId,
        "email": email,
        "displayName": displayName,
        "idToken": idToken,
        "registered": registered,
        "refreshToken": refreshToken,
        "expiresIn": expiresIn,
      };
}
