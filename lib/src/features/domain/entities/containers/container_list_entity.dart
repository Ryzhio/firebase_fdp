import 'dart:convert';

class ContainerListEntity {
  ContainerListEntity({
    required this.containerList,
  });

  List<ContainerListDetailEntity>? containerList;
  factory ContainerListEntity.fromJson(String str) =>
      ContainerListEntity.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ContainerListEntity.fromMap(Map<String, dynamic> json) =>
      ContainerListEntity(
        containerList: json["containerList"] == null
            ? null
            : List<ContainerListDetailEntity>.from(json["containerList"]
                .map((x) => ContainerListDetailEntity.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "containerList": containerList == null
            ? null
            : List<dynamic>.from(containerList!.map((x) => x.toMap())),
      };
}

class ContainerListDetailEntity {
  ContainerListDetailEntity({
    required this.container,
    required this.clientes,
    required this.campaignId,
    required this.containerId,
    required this.imgs,
    required this.logisticos,
    required this.navieras,
    required this.isPopularThisWeek,
  });

  final String container;
  final String clientes;
  final int campaignId;
  final String containerId;
  final List<String> imgs;
  final String logisticos;
  final String navieras;
  final bool isPopularThisWeek;

  factory ContainerListDetailEntity.fromJson(String str) =>
      ContainerListDetailEntity.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ContainerListDetailEntity.fromMap(Map<String, dynamic> json) =>
      ContainerListDetailEntity(
        container: json["container"],
        clientes: json["clientes"],
        campaignId: json["campaignId"],
        containerId: json["containerId"],
        imgs: List<String>.from(json["imgs"].map((x) => x)),
        logisticos: json["logisticos"],
        navieras: json["navieras"],
        isPopularThisWeek: json["isPopularThisWeek"],
      );

  Map<String, dynamic> toMap() => {
        "container": container,
        "clientes": clientes,
        "campaignId": campaignId,
        "containerId": containerId,
        "imgs": List<dynamic>.from(imgs.map((x) => x)),
        "logisticos": logisticos,
        "navieras": navieras,
        "isPopularThisWeek": isPopularThisWeek,
      };
}


// class ContainerList {
//     ContainerList({
//         required this.container,
//         required this.clientes,
//         required this.campaignId,
//         required this.containerId,
//         required this.id,
//         required this.imgs,
//         required this.logisticos,
//         required this.navieras,
//     });

//     final String container;
//     final String clientes;
//     final int campaignId;
//     final String containerId;
//     final int id;
//     final List<String> imgs;
//     final String logisticos;
//     final String navieras;

//     factory ContainerList.fromJson(String str) => ContainerList.fromMap(json.decode(str));

//     String toJson() => json.encode(toMap());

//     factory ContainerList.fromMap(Map<String, dynamic> json) => ContainerList(
//         container: json["container"],
//         clientes: json["clientes"],
//         campaignId: json["campaignId"],
//         containerId: json["containerId"],
//         id: json["id"],
//         imgs: List<String>.from(json["imgs"].map((x) => x)),
//         logisticos: json["logisticos"],
//         navieras: json["navieras"],
//     );

//     Map<String, dynamic> toMap() => {
//         "container": container,
//         "clientes": clientes,
//         "campaignId": campaignId,
//         "containerId": containerId,
//         "id": id,
//         "imgs": List<dynamic>.from(imgs.map((x) => x)),
//         "logisticos": logisticos,
//         "navieras": navieras,
//     };
// }
