import 'dart:convert';

List<TownshipModel> townshipModelFromJson(String str) =>
    List<TownshipModel>.from(
        json.decode(str).map((x) => TownshipModel.fromJson(x)));

String townshipModelToJson(List<TownshipModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TownshipModel {
  TownshipModel({
    required this.regId,
    required this.regName,
  });

  String regId;
  String regName;

  factory TownshipModel.fromJson(Map<String, dynamic> json) => TownshipModel(
        regId: json["reg_id"],
        regName: json["reg_name"],
      );

  Map<String, dynamic> toJson() => {
        "reg_id": regId,
        "reg_name": regName,
      };
}
