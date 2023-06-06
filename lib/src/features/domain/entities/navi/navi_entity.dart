import 'dart:convert';

class NaviListEntity {
  NaviListEntity({
    required this.naviList,
  });

  List<NaviListDetailEntity>? naviList;
  factory NaviListEntity.fromJson(String str) =>
      NaviListEntity.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory NaviListEntity.fromMap(Map<String, dynamic> json) => NaviListEntity(
        naviList: json["naviList"] == null
            ? null
            : List<NaviListDetailEntity>.from(
                json["naviList"].map((x) => NaviListDetailEntity.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "naviList": naviList == null
            ? null
            : List<dynamic>.from(naviList!.map((x) => x.toMap())),
      };
}

class NaviListDetailEntity {
  final String naviname;
  final String pais1;
  final String por1;
  final String pais2;
  final String por2;
  final String pais3;
  final String por3;
  final String pais4;
  final String por4;
  final String cantotal;
  final int navierasId;
  final String desti1;
  final String pordes1;
  final String desti2;
  final String pordes2;
  final String desti3;
  final String pordes3;
  final String desti4;
  final String pordes4;
  final String desti5;
  final String pordes5;
  final String naviId;
  final String op1;
  final String porop1;
  final String op2;
  final String porop2;
  final String op3;
  final String porop3;
  final String op4;
  final String porop4;
  final String op5;
  final String porop5;
  final bool isPopularThisWeek;

  NaviListDetailEntity({
    required this.naviname,
    required this.pais1,
    required this.por1,
    required this.pais2,
    required this.por2,
    required this.pais3,
    required this.por3,
    required this.pais4,
    required this.por4,
    required this.cantotal,
    required this.navierasId,
    required this.desti1,
    required this.pordes1,
    required this.desti2,
    required this.pordes2,
    required this.desti3,
    required this.pordes3,
    required this.desti4,
    required this.pordes4,
    required this.desti5,
    required this.pordes5,
    required this.naviId,
    required this.op1,
    required this.porop1,
    required this.op2,
    required this.porop2,
    required this.op3,
    required this.porop3,
    required this.op4,
    required this.porop4,
    required this.op5,
    required this.porop5,
    required this.isPopularThisWeek,
  });

  factory NaviListDetailEntity.fromJson(String str) =>
      NaviListDetailEntity.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory NaviListDetailEntity.fromMap(Map<String, dynamic> json) =>
      NaviListDetailEntity(
        naviname: json["naviname"],
        pais1: json["pais1"],
        por1: json["por1"],
        pais2: json["pais2"],
        por2: json["por2"],
        pais3: json["pais3"],
        por3: json["por3"],
        pais4: json["pais4"],
        por4: json["por4"],
        cantotal: json["cantotal"],
        navierasId: json["navierasId"],
        desti1: json["desti1"],
        pordes1: json["pordes1"],
        desti2: json["desti2"],
        pordes2: json["pordes2"],
        desti3: json["desti3"],
        pordes3: json["pordes3"],
        desti4: json["desti4"],
        pordes4: json["pordes4"],
        desti5: json["desti5"],
        pordes5: json["pordes5"],
        naviId: json["naviId"],
        op1: json["op1"],
        porop1: json["porop1"],
        op2: json["op2"],
        porop2: json["porop2"],
        op3: json["op3"],
        porop3: json["porop3"],
        op4: json["op4"],
        porop4: json["porop4"],
        op5: json["op5"],
        porop5: json["porop5"],
        isPopularThisWeek: json["isPopularThisWeek"],
      );

  Map<String, dynamic> toMap() => {
        "naviname": naviname,
        "pais1": pais1,
        "por1": por1,
        "pais2": pais2,
        "por2": por2,
        "pais3": pais3,
        "por3": por3,
        "pais4": pais4,
        "por4": por4,
        "cantotal": cantotal,
        "navierasId": navierasId,
        "desti1": desti1,
        "pordes1": pordes1,
        "desti2": desti2,
        "pordes2": pordes2,
        "desti3": desti3,
        "pordes3": pordes3,
        "desti4": desti4,
        "pordes4": pordes4,
        "desti5": desti5,
        "pordes5": pordes5,
        "naviId": naviId,
        "op1": op1,
        "porop1": porop1,
        "op2": op2,
        "porop2": porop2,
        "op3": op3,
        "porop3": porop3,
        "op4": op4,
        "porop4": porop4,
        "op5": op5,
        "porop5": porop5,
        "isPopularThisWeek": isPopularThisWeek,
      };
}
