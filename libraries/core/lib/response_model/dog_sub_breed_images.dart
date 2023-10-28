// To parse this JSON data, do
//
//     final dogsSubBreedImages = dogsSubBreedImagesFromJson(jsonString);

import 'dart:convert';

DogsSubBreedImages dogsSubBreedImagesFromJson(String str) =>
    DogsSubBreedImages.fromJson(json.decode(str));

String dogsSubBreedImagesToJson(DogsSubBreedImages data) =>
    json.encode(data.toJson());

class DogsSubBreedImages {
  List<String>? message;
  String? status;

  DogsSubBreedImages({
    this.message,
    this.status,
  });

  factory DogsSubBreedImages.fromJson(Map<String, dynamic> json) =>
      DogsSubBreedImages(
        message: json["message"] == null
            ? []
            : List<String>.from(json["message"]!.map((x) => x)),
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "message":
            message == null ? [] : List<dynamic>.from(message!.map((x) => x)),
        "status": status,
      };
}
