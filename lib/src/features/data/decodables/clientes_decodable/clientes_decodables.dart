import 'dart:convert';

class ClientesDecodable {
  ClientesDecodable({
    required this.clientes,
  });

  final List<Clientes>? clientes;

  factory ClientesDecodable.fromJson(String str) =>
      ClientesDecodable.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ClientesDecodable.fromMap(Map<String, dynamic> json) =>
      ClientesDecodable(
        clientes: json["clientes"] == null
            ? null
            : List<Clientes>.from(
                json["clientes"].map((x) => Clientes.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "clientes": clientes == null
            ? null
            : List<dynamic>.from(clientes!.map((x) => x.toMap())),
      };
}

class Clientes {
  Clientes({
    required this.cliente,
    required this.cant,
    required this.id,
  });

  final String cliente;
  final String cant;
  final int id;

  factory Clientes.fromJson(String str) => Clientes.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Clientes.fromMap(Map<String, dynamic> json) => Clientes(
        cliente: json["cliente"],
        cant: json["cant"],
        id: json["id"],
      );

  Map<String, dynamic> toMap() => {
        "cliente": cliente,
        "cant": cant,
        "id": id,
      };
}
