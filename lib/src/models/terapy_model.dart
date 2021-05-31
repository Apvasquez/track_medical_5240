// To parse this JSON data, do
//
//     final terapy = terapyFromJson(jsonString);

import 'dart:convert';

Terapy terapyFromJson(String str) => Terapy.fromJson(json.decode(str));

String terapyToJson(Terapy data) => json.encode(data.toJson());

class Terapy {
  Terapy({required this.description, required this.dateTo});

  String description;
  DateTime dateTo;

  factory Terapy.fromJson(Map<String, dynamic> json) => Terapy(
      description: json["description"], dateTo: DateTime.parse(json["dateTo"]));

  Map<String, dynamic> toJson() => {
        "description": description,
        "dateTo":
            "${dateTo.year.toString().padLeft(4, '0')}-${dateTo.month.toString().padLeft(2, '0')}-${dateTo.day.toString().padLeft(2, '0')}"
      };
}
