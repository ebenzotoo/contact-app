// To parse this JSON data, do
//
//     final contact = contactFromJson(jsonString);

import 'dart:convert';

Contact contactFromJson(String str) => Contact.fromJson(json.decode(str));

String contactToJson(Contact data) => json.encode(data.toJson());

class Contact {
  Contact({
    required this.country,
    required this.phone,
    required this.name,
    required this.email,
    required this.region,
  });

  String country;
  String phone;
  String name;
  String email;
  String region;

  factory Contact.fromJson(Map<String, dynamic> json) => Contact(
        country: json["country"],
        phone: json["phone"],
        name: json["name"],
        email: json["email"],
        region: json["region"],
      );

  Map<String, dynamic> toJson() => {
        "country": country,
        "phone": phone,
        "name": name,
        "email": email,
        "region": region,
      };
}
