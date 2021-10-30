import 'dart:convert';

AddressModel addressModelFromJson(String str) => AddressModel.fromJson(json.decode(str));

String addressModelToJson(AddressModel data) => json.encode(data.toJson());

class AddressModel {
  AddressModel({
   required this.cusId,
    required this.regId,
    required this.cusAddress,
  });

  String cusId;
  String regId;
  String cusAddress;

  factory AddressModel.fromJson(Map<String, dynamic> json) => AddressModel(
    cusId: json["cus_id"],
    regId: json["reg_id"],
    cusAddress: json["cus_address"],
  );

  Map<String, dynamic> toJson() => {
    "cus_id": cusId,
    "reg_id": regId,
    "cus_address": cusAddress,
  };
}