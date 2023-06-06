import 'dart:convert';

class ContainersPageEntity {
  ContainersPageEntity({
    required this.containerspage,
  });

  final List<ContainersPageDetailEntity>? containerspage;

  factory ContainersPageEntity.fromJson(String str) =>
      ContainersPageEntity.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ContainersPageEntity.fromMap(Map<String, dynamic> json) =>
      ContainersPageEntity(
        containerspage: json["containerspage"] == null
            ? null
            : List<ContainersPageDetailEntity>.from(json["containerspage"]
                .map((x) => ContainersPageDetailEntity.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "containerspage": containerspage == null
            ? null
            : List<dynamic>.from(containerspage!.map((x) => x.toMap())),
      };
}

class ContainersPageDetailEntity {
  ContainersPageDetailEntity({
    required this.img1,
    required this.porcentaje1,
    required this.name1,
    required this.id,
    required this.img2,
    required this.porcentaje2,
    required this.name2,
    required this.img3,
    required this.porcentaje3,
    required this.name3,
    required this.img4,
    required this.porcentaje4,
    required this.name4,
    required this.porcentotal,
    required this.cantidadcont,
  });

  final String img1;
  final String porcentaje1;
  final String name1;
  final int id;
  final String img2;
  final String porcentaje2;
  final String name2;
  final String img3;
  final String porcentaje3;
  final String name3;
  final String img4;
  final String porcentaje4;
  final String name4;
  final String porcentotal;
  final String cantidadcont;

  factory ContainersPageDetailEntity.fromJson(String str) =>
      ContainersPageDetailEntity.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ContainersPageDetailEntity.fromMap(Map<String, dynamic> json) =>
      ContainersPageDetailEntity(
        img1: json["img1"],
        porcentaje1: json["porcentaje1"],
        name1: json["name1"],
        id: json["id"],
        img2: json["img2"],
        porcentaje2: json["porcentaje2"],
        name2: json["name2"],
        img3: json["img3"],
        porcentaje3: json["porcentaje3"],
        name3: json["name3"],
        img4: json["img4"],
        porcentaje4: json["porcentaje4"],
        name4: json["name4"],
        porcentotal: json["porcentotal"],
        cantidadcont: json["cantidadcont"],
      );

  Map<String, dynamic> toMap() => {
        "img1": img1,
        "porcentaje1": porcentaje1,
        "name1": name1,
        "id": id,
        "img2": img2,
        "porcentaje2": porcentaje2,
        "name2": name2,
        "img3": img3,
        "porcentaje3": porcentaje3,
        "name3": name3,
        "img4": img4,
        "porcentaje4": porcentaje4,
        "name4": name4,
        "porcentotal": porcentotal,
        "cantidadcont": cantidadcont,
      };
}
