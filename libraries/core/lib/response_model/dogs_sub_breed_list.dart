// To parse this JSON data, do
//
//     final dogsSubBreedList = dogsSubBreedListFromJson(jsonString);

import 'dart:convert';

DogsSubBreedList dogsSubBreedListFromJson(String str) => DogsSubBreedList.fromJson(json.decode(str));

String dogsSubBreedListToJson(DogsSubBreedList data) => json.encode(data.toJson());

class DogsSubBreedList {
  List<String>? message;
  String? status;

  DogsSubBreedList({
    this.message,
    this.status,
  });

  factory DogsSubBreedList.fromJson(Map<String, dynamic> json) => DogsSubBreedList(
    message: json["message"] == null ? [] : List<String>.from(json["message"]!.map((x) => x)),
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "message": message == null ? [] : List<dynamic>.from(message!.map((x) => x)),
    "status": status,
  };
}
