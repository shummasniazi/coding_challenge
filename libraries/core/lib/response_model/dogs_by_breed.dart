// To parse this JSON data, do
//
//     final dogsByBreed = dogsByBreedFromJson(jsonString);

import 'dart:convert';

DogsByBreed dogsByBreedFromJson(String str) => DogsByBreed.fromJson(json.decode(str));

String dogsByBreedToJson(DogsByBreed data) => json.encode(data.toJson());

class DogsByBreed {
  List<String>? message;
  String? status;

  DogsByBreed({
    this.message,
    this.status,
  });

  factory DogsByBreed.fromJson(Map<String, dynamic> json) => DogsByBreed(
    message: json["message"] == null ? [] : List<String>.from(json["message"]!.map((x) => x)),
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "message": message == null ? [] : List<dynamic>.from(message!.map((x) => x)),
    "status": status,
  };
}
