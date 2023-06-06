import 'dart:convert';

class NavierasDecodable {
  NavierasDecodable({
    required this.navieras,
  });

  final List<Navieras>? navieras;

  factory NavierasDecodable.fromJson(String str) =>
      NavierasDecodable.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory NavierasDecodable.fromMap(Map<String, dynamic> json) =>
      NavierasDecodable(
        navieras: json["navieras"] == null
            ? null
            : List<Navieras>.from(
                json["navieras"].map((x) => Navieras.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "navieras": navieras == null
            ? null
            : List<dynamic>.from(navieras!.map((x) => x.toMap())),
      };
}

class Navieras {
  Navieras({
    required this.navi,
    required this.porcentaje,
    required this.cant,
    required this.id,
    // required this.navi2,
    // required this.porcentaje2,
    // required this.cant2,
    // required this.navi3,
    // required this.porcentaje3,
    // required this.cant3,
    // required this.navi4,
    // required this.porcentaje4,
    // required this.cant4,
    // required this.navi5,
    // required this.porcentaje5,
    // required this.cant5,
    // required this.navi6,
    // required this.porcentaje6,
    // required this.cant6,
    required this.porcentotal,
    required this.cantotal,
  });

  final String navi;
  final String porcentaje;
  final String cant;
  final int id;
  // final String navi2;
  // final String porcentaje2;
  // final String cant2;
  // final String navi3;
  // final String porcentaje3;
  // final String cant3;
  // final String navi4;
  // final String porcentaje4;
  // final String cant4;
  // final String navi5;
  // final String porcentaje5;
  // final String cant5;
  // final String navi6;
  // final String porcentaje6;
  // final String cant6;
  final String porcentotal;
  final String cantotal;

  factory Navieras.fromJson(String str) => Navieras.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Navieras.fromMap(Map<String, dynamic> json) => Navieras(
        navi: json["navi"],
        porcentaje: json["porcentaje"],
        cant: json["cant"],
        id: json["id"],
        // navi2: json["navi2"],
        // porcentaje2: json["porcentaje2"],
        // cant2: json["cant2"],
        // navi3: json["navi3"],
        // porcentaje3: json["porcentaje3"],
        // cant3: json["cant3"],
        // navi4: json["navi4"],
        // porcentaje4: json["porcentaje4"],
        // cant4: json["cant4"],
        // navi5: json["navi5"],
        // porcentaje5: json["porcentaje5"],
        // cant5: json["cant5"],
        // navi6: json["navi6"],
        // porcentaje6: json["porcentaje6"],
        // cant6: json["cant6"],
        porcentotal: json["porcentotal"],
        cantotal: json["cantotal"],
      );

  Map<String, dynamic> toMap() => {
        "navi": navi,
        "porcentaje": porcentaje,
        "cant": cant,
        "id": id,
        // "navi2": navi2,
        // "porcentaje2": porcentaje2,
        // "cant2": cant2,
        // "navi3": navi3,
        // "porcentaje3": porcentaje3,
        // "cant3": cant3,
        // "navi4": navi4,
        // "porcentaje4": porcentaje4,
        // "cant4": cant4,
        // "navi5": navi5,
        // "porcentaje5": porcentaje5,
        // "cant5": cant5,
        // "navi6": navi6,
        // "porcentaje6": porcentaje6,
        // "cant6": cant6,
        "porcentotal": porcentotal,
        "cantotal": cantotal,
      };
}
