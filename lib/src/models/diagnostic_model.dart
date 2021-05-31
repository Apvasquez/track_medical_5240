// To parse this JSON data, do
//
//     final diagnostic = diagnosticFromJson(jsonString);

import 'dart:convert';

import 'package:flutter_projects/src/models/terapy_model.dart';


Diagnostic diagnosticFromJson(String str) =>
    Diagnostic.fromJson(json.decode(str));

String diagnosticToJson(Diagnostic data) => json.encode(data.toJson());

class Diagnostic {
  Diagnostic(
      {required this.description,
      required this.dateTo,
      this.code,
      this.doctor,
      required this.terapies});

  String description;
  DateTime dateTo;
  String? code;
  String? doctor;
  List<Terapy> terapies;

  factory Diagnostic.fromJson(Map<String, dynamic> json) => Diagnostic(
        description: json["description"],
        dateTo: DateTime.parse(json["dateTo"]),
        code: json["code"],
        doctor: json["doctor"],
        terapies:
            List<Terapy>.from(json["terapies"].map((x) => Terapy.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "description": description,
        "dateTo":
            "${dateTo.year.toString().padLeft(4, '0')}-${dateTo.month.toString().padLeft(2, '0')}-${dateTo.day.toString().padLeft(2, '0')}",
        "code": code,
        "doctor": doctor,
        "terapies": List<dynamic>.from(terapies.map((x) => x.toJson())),
      };
}
