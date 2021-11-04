import 'dart:convert';

List<AddressModel> addressModelFromJson(String str) => List<AddressModel>.from(json.decode(str).map((x) => AddressModel.fromJson(x)));

String addressModelToJson(List<AddressModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AddressModel {
  AddressModel({
   required this.cusId,
    required this.regId,
    required this.cusAddress,
    required this.reg_name
  });

  String cusId;
  String regId;
  String cusAddress;
  String reg_name;

  factory AddressModel.fromJson(Map<String, dynamic> json) => AddressModel(
    cusId: json["cus_id"],
    regId: json["reg_id"],
    cusAddress: json["cus_address"],
    reg_name: json['reg_name']
  );

  Map<String, dynamic> toJson() => {
    "cus_id": cusId,
    "reg_id": regId,
    "cus_address": cusAddress,
    "reg_name" : reg_name
  };
}