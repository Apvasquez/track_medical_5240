import 'dart:convert';

Allergy allergyFromJson(String str) => Allergy.fromJson(json.decode(str));
String allergyToJson(Allergy data) => json.encode(data.toJson());

class Allergy {
  Allergy({
    required this.name,
    required this.description,
  });

  String name;
  String description;

  factory Allergy.fromJson(Map<String, dynamic> json) => Allergy(
        name: json["name"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
      };
}
