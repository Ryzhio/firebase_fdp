import 'dart:convert';

class LogisticosDecodable {
  LogisticosDecodable({
    required this.logisticos,
  });

  final List<Logisticos>? logisticos;

  factory LogisticosDecodable.fromJson(String str) =>
      LogisticosDecodable.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LogisticosDecodable.fromMap(Map<String, dynamic> json) =>
      LogisticosDecodable(
        logisticos: json["logisticos"] == null
            ? null
            : List<Logisticos>.from(
                json["logisticos"].map((x) => Logisticos.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "logisticos": logisticos == null
            ? null
            : List<dynamic>.from(logisticos!.map((x) => x.toMap())),
      };
}

class Logisticos {
  Logisticos({
    required this.op,
    required this.porcentaje,
    required this.cant,
    required this.id,
    // required this.op2,
    // required this.porcentaje2,
    // required this.cant2,
    // required this.op3,
    // required this.porcentaje3,
    // required this.cant3,
    // required this.op4,
    // required this.porcentaje4,
    // required this.cant4,
    // required this.op5,
    // required this.porcentaje5,
    // required this.cant5,
    required this.porcentotal,
    required this.cantotal,
  });

  final String op;
  final String porcentaje;
  final String cant;
  final int id;
  // final String op2;
  // final String porcentaje2;
  // final String cant2;
  // final String op3;
  // final String porcentaje3;
  // final String cant3;
  // final String op4;
  // final String porcentaje4;
  // final String cant4;
  // final String op5;
  // final String porcentaje5;
  // final String cant5;
  final String porcentotal;
  final String cantotal;

  factory Logisticos.fromJson(String str) =>
      Logisticos.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Logisticos.fromMap(Map<String, dynamic> json) => Logisticos(
        op: json["op"],
        porcentaje: json["porcentaje"],
        cant: json["cant"],
        id: json["id"],
        // op2: json["op2"],
        // porcentaje2: json["porcentaje2"],
        // cant2: json["cant2"],
        // op3: json["op3"],
        // porcentaje3: json["porcentaje3"],
        // cant3: json["cant3"],
        // op4: json["op4"],
        // porcentaje4: json["porcentaje4"],
        // cant4: json["cant4"],
        // op5: json["op5"],
        // porcentaje5: json["porcentaje5"],
        // cant5: json["cant5"],
        porcentotal: json["porcentotal"],
        cantotal: json["cantotal"],
      );

  Map<String, dynamic> toMap() => {
        "op": op,
        "porcentaje": porcentaje,
        "cant": cant,
        "id": id,
        // "op2": op2,
        // "porcentaje2": porcentaje2,
        // "cant2": cant2,
        // "op3": op3,
        // "porcentaje3": porcentaje3,
        // "cant3": cant3,
        // "op4": op4,
        // "porcentaje4": porcentaje4,
        // "cant4": cant4,
        // "op5": op5,
        // "porcentaje5": porcentaje5,
        // "cant5": cant5,
        "porcentotal": porcentotal,
        "cantotal": cantotal,
      };
}
