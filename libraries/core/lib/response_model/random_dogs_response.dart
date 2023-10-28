import 'dart:convert';

RandomDogsResponse randomDogsResponseFromJson(String str) => RandomDogsResponse.fromJson(json.decode(str));

String randomDogsResponseToJson(RandomDogsResponse data) => json.encode(data.toJson());

class RandomDogsResponse {
  String? message;
  String? status;

  RandomDogsResponse({
    this.message,
    this.status,
  });

  factory RandomDogsResponse.fromJson(Map<String, dynamic> json) => RandomDogsResponse(
    message: json["message"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "status": status,
  };
}
