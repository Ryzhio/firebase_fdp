import 'dart:convert';

class ClienListEntity {
  ClienListEntity({
    required this.clienList,
  });

  List<ClienListDetailEntity>? clienList;
  factory ClienListEntity.fromJson(String str) =>
      ClienListEntity.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ClienListEntity.fromMap(Map<String, dynamic> json) => ClienListEntity(
        clienList: json["clienList"] == null
            ? null
            : List<ClienListDetailEntity>.from(
                json["clienList"].map((x) => ClienListDetailEntity.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "clienList": clienList == null
            ? null
            : List<dynamic>.from(clienList!.map((x) => x.toMap())),
      };
}

class ClienListDetailEntity {
  final String clienname;
  final String img1;
  final String img2;
  final String porcali6;
  final String cantporcali6;
  final String porcali7;
  final String cantporcali7;
  final String porcali8;
  final String cantporcali8;
  final String porcali9;
  final String cantporcali9;
  final String porcali10;
  final String cantporcali10;
  final String porcali12;
  final String cantporcali12;
  final String porcali14;
  final String cantporcali14;
  final String cantotal;
  final int clientesId;
  final String pais1;
  final String pais2;
  final String desti1;
  final String desti2;
  final String desti3;
  final String desti4;
  final String clienId;
  final String empa1;
  final String empa2;
  final String empa3;
  final String varie1;
  final bool isPopularThisWeek;
  final String porcentotal;

  ClienListDetailEntity({
    required this.clienname,
    required this.img1,
    required this.img2,
    required this.porcali6,
    required this.cantporcali6,
    required this.porcali7,
    required this.cantporcali7,
    required this.porcali8,
    required this.cantporcali8,
    required this.porcali9,
    required this.cantporcali9,
    required this.porcali10,
    required this.cantporcali10,
    required this.porcali12,
    required this.cantporcali12,
    required this.porcali14,
    required this.cantporcali14,
    required this.cantotal,
    required this.clientesId,
    required this.pais1,
    required this.pais2,
    required this.desti1,
    required this.desti2,
    required this.desti3,
    required this.desti4,
    required this.clienId,
    required this.empa1,
    required this.empa2,
    required this.empa3,
    required this.varie1,
    required this.isPopularThisWeek,
    required this.porcentotal,
  });

  factory ClienListDetailEntity.fromJson(String str) =>
      ClienListDetailEntity.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ClienListDetailEntity.fromMap(Map<String, dynamic> json) =>
      ClienListDetailEntity(
        clienname: json["clienname"],
        img1: json["img1"],
        img2: json["img2"],
        porcali6: json["porcali6"],
        cantporcali6: json["cantporcali6"],
        porcali7: json["porcali7"],
        cantporcali7: json["cantporcali7"],
        porcali8: json["porcali8"],
        cantporcali8: json["cantporcali8"],
        porcali9: json["porcali9"],
        cantporcali9: json["cantporcali9"],
        porcali10: json["porcali10"],
        cantporcali10: json["cantporcali10"],
        porcali12: json["porcali12"],
        cantporcali12: json["cantporcali12"],
        porcali14: json["porcali14"],
        cantporcali14: json["cantporcali14"],
        cantotal: json["cantotal"],
        clientesId: json["clientesId"],
        pais1: json["pais1"],
        pais2: json["pais2"],
        desti1: json["desti1"],
        desti2: json["desti2"],
        desti3: json["desti3"],
        desti4: json["desti4"],
        clienId: json["clienId"],
        empa1: json["empa1"],
        empa2: json["empa2"],
        empa3: json["empa3"],
        varie1: json["varie1"],
        isPopularThisWeek: json["isPopularThisWeek"],
        porcentotal: json["porcentotal"],
      );

  Map<String, dynamic> toMap() => {
        "clienname": clienname,
        "img1": img1,
        "img2": img2,
        "porcali6": porcali6,
        "cantporcali6": cantporcali6,
        "porcali7": porcali7,
        "cantporcali7": cantporcali7,
        "porcali8": porcali8,
        "cantporcali8": cantporcali8,
        "porcali9": porcali9,
        "cantporcali9": cantporcali9,
        "porcali10": porcali10,
        "cantporcali10": cantporcali10,
        "porcali12": porcali12,
        "cantporcali12": cantporcali12,
        "porcali14": porcali14,
        "cantporcali14": cantporcali14,
        "cantotal": cantotal,
        "clientesId": clientesId,
        "pais1": pais1,
        "pais2": pais2,
        "desti1": desti1,
        "desti2": desti2,
        "desti3": desti3,
        "desti4": desti4,
        "clienId": clienId,
        "empa1": empa1,
        "empa2": empa2,
        "empa3": empa3,
        "varie1": varie1,
        "isPopularThisWeek": isPopularThisWeek,
        "porcentotal": porcentotal,
      };
}
