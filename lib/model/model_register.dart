// To parse this JSON data, do
//
//     final modelRegisterApi = modelRegisterApiFromJson(jsonString);

import 'dart:convert';

ModelRegisterApi modelRegisterApiFromJson(String str) => ModelRegisterApi.fromJson(json.decode(str));

String modelRegisterApiToJson(ModelRegisterApi data) => json.encode(data.toJson());

class ModelRegisterApi {
  int value;
  String message;

  ModelRegisterApi({
    required this.value,
    required this.message,
  });

  factory ModelRegisterApi.fromJson(Map<String, dynamic> json) => ModelRegisterApi(
    value: json["value"],
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "value": value,
    "message": message,
  };
}
