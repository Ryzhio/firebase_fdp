import 'dart:convert';

class OpListEntity {
  OpListEntity({
    required this.opList,
  });

  List<OpListDetailEntity>? opList;
  factory OpListEntity.fromJson(String str) =>
      OpListEntity.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory OpListEntity.fromMap(Map<String, dynamic> json) => OpListEntity(
        opList: json["opList"] == null
            ? null
            : List<OpListDetailEntity>.from(
                json["opList"].map((x) => OpListDetailEntity.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "opList": opList == null
            ? null
            : List<dynamic>.from(opList!.map((x) => x.toMap())),
      };
}

class OpListDetailEntity {
  OpListDetailEntity({
    required this.name1,
    required this.name2,
    required this.name3,
    required this.name4,
    required this.logisticosId,
    required this.opId,
    required this.op,
    required this.cant,
    required this.por1,
    required this.por2,
    required this.por3,
    required this.por4,
    required this.portotal,
    required this.isPopularThisWeek,
  });

  final String name1;
  final String name2;
  final String name3;
  final String name4;
  final int logisticosId;
  final String opId;
  final String op;
  final String cant;
  final String por1;
  final String por2;
  final String por3;
  final String por4;
  final String portotal;
  final bool isPopularThisWeek;

  factory OpListDetailEntity.fromJson(String str) =>
      OpListDetailEntity.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory OpListDetailEntity.fromMap(Map<String, dynamic> json) =>
      OpListDetailEntity(
        name1: json["name1"],
        name2: json["name2"],
        name3: json["name3"],
        name4: json["name4"],
        logisticosId: json["logisticosId"],
        opId: json["opId"],
        op: json["op"],
        cant: json["cant"],
        por1: json["por1"],
        por2: json["por2"],
        por3: json["por3"],
        por4: json["por4"],
        portotal: json["portotal"],
        isPopularThisWeek: json["isPopularThisWeek"],
      );

  Map<String, dynamic> toMap() => {
        "name1": name1,
        "name2": name2,
        "name3": name3,
        "name4": name4,
        "logisticosId": logisticosId,
        "opId": opId,
        "op": op,
        "cant": cant,
        "por1": por1,
        "por2": por2,
        "por3": por3,
        "por4": por4,
        "portotal": portotal,
        "isPopularThisWeek": isPopularThisWeek,
      };
}
