import 'dart:convert';

List<Seb7aZekr> seb7aZekrFromJson(String str) => List<Seb7aZekr>.from(json.decode(str).map((x) => Seb7aZekr.fromJson(x)));

class Seb7aZekr {
  final String content, description;
  final int id;
  Seb7aZekr({required this.content, required this.description, required this.id});

  factory Seb7aZekr.fromJson(Map<String, dynamic> json) {
    return Seb7aZekr(content: json['content'], description: json['description'], id: json['id']);
  }
}
