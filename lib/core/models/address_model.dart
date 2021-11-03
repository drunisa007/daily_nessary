import 'dart:convert';

AddressModel addressModelFromJson(String str) => AddressModel.fromJson(json.decode(str));

String addressModelToJson(AddressModel data) => json.encode(data.toJson());

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