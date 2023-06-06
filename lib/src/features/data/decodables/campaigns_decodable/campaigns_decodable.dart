import 'dart:convert';

class CampaignsDecodable {
  CampaignsDecodable({
    required this.campaigns,
  });

  final List<Campaign>? campaigns;

  factory CampaignsDecodable.fromJson(String str) =>
      CampaignsDecodable.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CampaignsDecodable.fromMap(Map<String, dynamic> json) =>
      CampaignsDecodable(
        campaigns: json["campaigns"] == null
            ? null
            : List<Campaign>.from(
                json["campaigns"].map((x) => Campaign.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "campaigns": campaigns == null
            ? null
            : List<dynamic>.from(campaigns!.map((x) => x.toMap())),
      };
}

class Campaign {
  Campaign({
    required this.id,
    required this.img,
    required this.name,
  });

  final int id;
  final String img;
  final String name;

  factory Campaign.fromJson(String str) => Campaign.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Campaign.fromMap(Map<String, dynamic> json) => Campaign(
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
