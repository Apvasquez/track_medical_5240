import 'dart:convert';

Secure secureFromJson(String str) => Secure.fromJson(json.decode(str));
String secureyToJson(Secure data) => json.encode(data.toJson());

class Secure {
  Secure({
    required this.name,
    required this.type,
    required this.covered,
  });

  String name;
  String type;
  String covered;

  factory Secure.fromJson(Map<String, dynamic> json) => Secure(
        name: json["name"],
        type: json["type"],
        covered: json["covered"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "type": type,
        "covered": covered,
      };
}
