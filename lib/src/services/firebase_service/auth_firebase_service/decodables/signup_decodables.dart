// To parse this JSON data, do
//
//     final signUpDecodable = signUpDecodableFromMap(jsonString);

import 'dart:convert';

class SignUpDecodable {
  SignUpDecodable({
    this.kind,
    this.idToken,
    this.email,
    this.refreshToken,
    this.expiresIn,
    this.localId,
  });

  String? kind;
  String? idToken;
  String? email;
  String? refreshToken;
  String? expiresIn;
  String? localId;

  factory SignUpDecodable.fromJson(String str) =>
      SignUpDecodable.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SignUpDecodable.fromMap(Map<String, dynamic> json) => SignUpDecodable(
        kind: json["kind"],
        idToken: json["idToken"],
        email: json["email"],
        refreshToken: json["refreshToken"],
        expiresIn: json["expiresIn"],
        localId: json["localId"],
      );

  Map<String, dynamic> toMap() => {
        "kind": kind,
        "idToken": idToken,
        "email": email,
        "refreshToken": refreshToken,
        "expiresIn": expiresIn,
        "localId": localId,
      };
}
