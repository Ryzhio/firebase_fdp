import 'dart:convert';

class ContainersPageCountryDecodable {
  ContainersPageCountryDecodable({
    required this.containerspagecountry,
  });

  final List<ContainersPageCountry>? containerspagecountry;

  factory ContainersPageCountryDecodable.fromJson(String str) =>
      ContainersPageCountryDecodable.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ContainersPageCountryDecodable.fromMap(Map<String, dynamic> json) =>
      ContainersPageCountryDecodable(
        containerspagecountry: json["containerspagecountry"] == null
            ? null
            : List<ContainersPageCountry>.from(json["containerspagecountry"]
                .map((x) => ContainersPageCountry.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "containerspagecountry": containerspagecountry == null
            ? null
            : List<dynamic>.from(containerspagecountry!.map((x) => x.toMap())),
      };
}

class ContainersPageCountry {
  ContainersPageCountry({
    required this.img,
    required this.porcentaje,
    required this.cantidad,
    required this.name,
    required this.destino1,
    required this.porcendes1,
    required this.destino2,
    required this.porcendes2,
    required this.destino3,
    required this.porcendes3,
    required this.destino4,
    required this.porcendes4,
    required this.destino5,
    required this.porcendes5,
    required this.id,
  });

  final String img;
  final String porcentaje;
  final String cantidad;
  final String name;
  final String destino1;
  final String porcendes1;
  final String destino2;
  final String porcendes2;
  final String destino3;
  final String porcendes3;
  final String destino4;
  final String porcendes4;
  final String destino5;
  final String porcendes5;
  final int id;

  factory ContainersPageCountry.fromJson(String str) =>
      ContainersPageCountry.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ContainersPageCountry.fromMap(Map<String, dynamic> json) =>
      ContainersPageCountry(
        img: json["img"],
        porcentaje: json["porcentaje"],
        cantidad: json["cantidad"],
        name: json["name"],
        destino1: json["destino1"],
        porcendes1: json["porcendes1"],
        destino2: json["destino2"],
        porcendes2: json["porcendes2"],
        destino3: json["destino3"],
        porcendes3: json["porcendes3"],
        destino4: json["destino4"],
        porcendes4: json["porcendes4"],
        destino5: json["destino5"],
        porcendes5: json["porcendes5"],
        id: json["id"],
      );

  Map<String, dynamic> toMap() => {
        "img": img,
        "porcentaje": porcentaje,
        "cantidad": cantidad,
        "name": name,
        "destino1": destino1,
        "porcendes1": porcendes1,
        "destino2": destino2,
        "porcendes2": porcendes2,
        "destino3": destino3,
        "porcendes3": porcendes3,
        "destino4": destino4,
        "porcendes4": porcendes4,
        "destino5": destino5,
        "porcendes5": porcendes5,
        "id": id,
      };
}
