import 'dart:convert';

class ContenedoresEntity {
  ContenedoresEntity({
    required this.contenedores,
  });

  final List<ContenedoresDetailEntity>? contenedores;

  factory ContenedoresEntity.fromJson(String str) =>
      ContenedoresEntity.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ContenedoresEntity.fromMap(Map<String, dynamic> json) =>
      ContenedoresEntity(
        contenedores: json["contenedores"] == null
            ? null
            : List<ContenedoresDetailEntity>.from(json["contenedores"]
                .map((x) => ContenedoresDetailEntity.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "contenedores": contenedores == null
            ? null
            : List<dynamic>.from(contenedores!.map((x) => x.toMap())),
      };
}

class ContenedoresDetailEntity {
  ContenedoresDetailEntity({
    required this.contenedores,
    required this.id,
  });

  final String contenedores;
  final int id;

  factory ContenedoresDetailEntity.fromJson(String str) =>
      ContenedoresDetailEntity.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ContenedoresDetailEntity.fromMap(Map<String, dynamic> json) =>
      ContenedoresDetailEntity(
        contenedores: json["contenedores"],
        id: json["id"],
      );

  Map<String, dynamic> toMap() => {
        "contenedores": contenedores,
        "id": id,
      };
}
