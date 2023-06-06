import 'dart:convert';

class CampaignsEntity {
  CampaignsEntity({
    required this.campaigns,
  });

  final List<CampaignDetailEntity>? campaigns;

  factory CampaignsEntity.fromJson(String str) =>
      CampaignsEntity.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CampaignsEntity.fromMap(Map<String, dynamic> json) => CampaignsEntity(
        campaigns: json["campaigns"] == null
            ? null
            : List<CampaignDetailEntity>.from(
                json["campaigns"].map((x) => CampaignDetailEntity.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "campaigns": campaigns == null
            ? null
            : List<dynamic>.from(campaigns!.map((x) => x.toMap())),
      };
}

class CampaignDetailEntity {
  CampaignDetailEntity({
    required this.id,
    required this.img,
    required this.name,
  });

  final int id;
  final String img;
  final String name;

  factory CampaignDetailEntity.fromJson(String str) =>
      CampaignDetailEntity.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CampaignDetailEntity.fromMap(Map<String, dynamic> json) =>
      CampaignDetailEntity(
        id: json["id"],
        img: json["img"],
        name: json["name"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "img": img,
        "name": name,
      };
}
