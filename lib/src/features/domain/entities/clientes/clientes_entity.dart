import 'dart:convert';

class ClientesEntity {
  ClientesEntity({
    required this.clientes,
  });

  final List<ClientesDetailEntity>? clientes;

  factory ClientesEntity.fromJson(String str) =>
      ClientesEntity.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ClientesEntity.fromMap(Map<String, dynamic> json) => ClientesEntity(
        clientes: json["clientes"] == null
            ? null
            : List<ClientesDetailEntity>.from(
                json["clientes"].map((x) => ClientesDetailEntity.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "clientes": clientes == null
            ? null
            : List<dynamic>.from(clientes!.map((x) => x.toMap())),
      };
}

class ClientesDetailEntity {
  ClientesDetailEntity({
    required this.cliente,
    required this.cant,
    required this.id,
  });

  final String cliente;
  final String cant;
  final int id;

  factory ClientesDetailEntity.fromJson(String str) =>
      ClientesDetailEntity.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ClientesDetailEntity.fromMap(Map<String, dynamic> json) =>
      ClientesDetailEntity(
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
