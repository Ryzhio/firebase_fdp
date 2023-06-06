// To parse this JSON data, do
//
//     final correrctPostBodyParams = correrctPostBodyParamsFromMap(jsonString);

import 'dart:convert';

class CorrerctPostBodyParams {
  CorrerctPostBodyParams({
    this.title,
    this.body,
    this.userId,
  });

  String? title;
  String? body;
  int? userId;

  factory CorrerctPostBodyParams.fromJson(String str) =>
      CorrerctPostBodyParams.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CorrerctPostBodyParams.fromMap(Map<String, dynamic> json) =>
      CorrerctPostBodyParams(
        title: json["title"],
        body: json["body"],
        userId: json["userId"],
      );

  Map<String, dynamic> toMap() => {
        "title": title,
        "body": body,
        "userId": userId,
      };
}

// To parse this JSON data, do
//
//     final correrctPutBodyParams = correrctPutBodyParamsFromMap(jsonString);

class CorrerctPutBodyParams {
  CorrerctPutBodyParams({
    this.id,
    this.title,
    this.body,
    this.userId,
  });

  int? id;
  String? title;
  String? body;
  int? userId;

  factory CorrerctPutBodyParams.fromJson(String str) =>
      CorrerctPutBodyParams.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CorrerctPutBodyParams.fromMap(Map<String, dynamic> json) =>
      CorrerctPutBodyParams(
        id: json["id"],
        title: json["title"],
        body: json["body"],
        userId: json["userId"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "title": title,
        "body": body,
        "userId": userId,
      };
}
