import 'dart:convert';

class ConteListEntity {
  ConteListEntity({
    required this.conteList,
  });

  List<ConteListDetailEntity>? conteList;
  factory ConteListEntity.fromJson(String str) =>
      ConteListEntity.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ConteListEntity.fromMap(Map<String, dynamic> json) => ConteListEntity(
        conteList: json["conteList"] == null
            ? null
            : List<ConteListDetailEntity>.from(
                json["conteList"].map((x) => ConteListDetailEntity.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "conteList": conteList == null
            ? null
            : List<dynamic>.from(conteList!.map((x) => x.toMap())),
      };
}

class ConteListDetailEntity {
  final String contenedores;
  final String conteId;
  final bool isPopularThisWeek;
  final int id;

  ConteListDetailEntity({
    required this.contenedores,
    required this.conteId,
    required this.isPopularThisWeek,
    required this.id,
  });

  factory ConteListDetailEntity.fromJson(String str) =>
      ConteListDetailEntity.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ConteListDetailEntity.fromMap(Map<String, dynamic> json) =>
      ConteListDetailEntity(
        contenedores: json["contenedores"],
        conteId: json["conteId"],
        isPopularThisWeek: json["isPopularThisWeek"],
        id: json["id"],
      );

  Map<String, dynamic> toMap() => {
        "contenedores": contenedores,
        "conteId": conteId,
        "isPopularThisWeek": isPopularThisWeek,
        "id": id,
      };
}
