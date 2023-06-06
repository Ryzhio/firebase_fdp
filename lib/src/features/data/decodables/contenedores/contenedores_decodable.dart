import 'dart:convert';

class ContenedoresDecodable {
  ContenedoresDecodable({
    required this.contenedores,
  });

  final List<Contenedores>? contenedores;

  factory ContenedoresDecodable.fromJson(String str) =>
      ContenedoresDecodable.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ContenedoresDecodable.fromMap(Map<String, dynamic> json) =>
      ContenedoresDecodable(
        contenedores: json["contenedores"] == null
            ? null
            : List<Contenedores>.from(
                json["contenedores"].map((x) => Contenedores.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "contenedores": contenedores == null
            ? null
            : List<dynamic>.from(contenedores!.map((x) => x.toMap())),
      };
}

class Contenedores {
  Contenedores({
    required this.contenedores,
    required this.id,
  });

  final String contenedores;
  final int id;

  factory Contenedores.fromJson(String str) =>
      Contenedores.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Contenedores.fromMap(Map<String, dynamic> json) => Contenedores(
        contenedores: json["contenedores"],
        id: json["id"],
      );

  Map<String, dynamic> toMap() => {
        "contenedores": contenedores,
        "id": id,
      };
}
