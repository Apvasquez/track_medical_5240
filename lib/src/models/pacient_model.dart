import 'dart:convert';

import 'allergy_model.dart';
import 'secure_model.dart';


Pacient pacientFromJson(String str) => Pacient.fromJson(json.decode(str));
String pacientToJson(Pacient data) => json.encode(data.toJson());

class Pacient {
  Pacient({
    required this.name,
    required this.surname,
    this.placeOfBirth,
    required this.dateOfBirth,
    this.allergies,
    this.secure,
  });

  String name;
  String surname;
  String? placeOfBirth;
  DateTime dateOfBirth;
  List<Allergy>? allergies;
  Secure? secure;

  factory Pacient.fromJson(Map<String, dynamic> json) => Pacient(
        name: json["name"],
        surname: json["surname"],
        placeOfBirth: json["placeOfBirth"],
        dateOfBirth: DateTime.parse(json["dateOfBirth"]),
        allergies: List<Allergy>.from(
            json["allergies"].map((x) => Allergy.fromJson(x))),
        secure: Secure.fromJson(json["secure"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "surname": surname,
        "placeOfBirth": placeOfBirth,
        "dateOfBirth":
            "${dateOfBirth.year.toString().padLeft(4, '0')}-${dateOfBirth.month.toString().padLeft(2, '0')}-${dateOfBirth.day.toString().padLeft(2, '0')}",
        "allergies": List<dynamic>.from(allergies!.map((x) => x.toJson())),
        "secure": secure?.toJson(),
      };
}
