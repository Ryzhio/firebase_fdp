import 'dart:convert';

class ConteListDecodable {
  ConteListDecodable({
    required this.conteList,
  });

  List<ConteList>? conteList;
  factory ConteListDecodable.fromJson(String str) =>
      ConteListDecodable.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ConteListDecodable.fromMap(Map<String, dynamic> json) =>
      ConteListDecodable(
        conteList: json["conteList"] == null
            ? null
            : List<ConteList>.from(
                json["conteList"].map((x) => ConteList.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "conteList": conteList == null
            ? null
            : List<dynamic>.from(conteList!.map((x) => x.toMap())),
      };
}

class ConteList {
  final String contenedores;
  final String conteId;
  final bool isPopularThisWeek;
  final int id;

  ConteList({
    required this.contenedores,
    required this.conteId,
    required this.isPopularThisWeek,
    required this.id,
  });

  factory ConteList.fromJson(String str) => ConteList.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ConteList.fromMap(Map<String, dynamic> json) => ConteList(
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
