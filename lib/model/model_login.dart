// To parse this JSON data, do
//
//     final modelLoginApi = modelLoginApiFromJson(jsonString);

import 'dart:convert';

ModelLoginApi modelLoginApiFromJson(String str) => ModelLoginApi.fromJson(json.decode(str));

String modelLoginApiToJson(ModelLoginApi data) => json.encode(data.toJson());

class ModelLoginApi {
  int value;
  String message;
  String username;
  String nama;
  String id;

  ModelLoginApi({
    required this.value,
    required this.message,
    required this.username,
    required this.nama,
    required this.id,
  });

  factory ModelLoginApi.fromJson(Map<String, dynamic> json) => ModelLoginApi(
    value: json["value"],
    message: json["message"],
    username: json["username"],
    nama: json["nama"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "value": value,
    "message": message,
    "username": username,
    "nama": nama,
    "id": id,
  };
}
