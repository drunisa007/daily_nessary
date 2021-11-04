// To parse this JSON data, do
//
//     final itemDetailModel = itemDetailModelFromJson(jsonString);

import 'dart:convert';

List<ItemDetailModel> itemDetailModelFromJson(String str) => List<ItemDetailModel>.from(json.decode(str).map((x) => ItemDetailModel.fromJson(x)));

String itemDetailModelToJson(List<ItemDetailModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ItemDetailModel {
  ItemDetailModel({
    required this.itemId,
    required this.itemName,
    required this.packageName,
    required this.itemQty,
    required this.price,
    required this.itemImg,
  });

  String itemId;
  String itemName;
  String packageName;
  String itemQty;
  String price;
  String itemImg;

  factory ItemDetailModel.fromJson(Map<String, dynamic> json) => ItemDetailModel(
    itemId: json["item_id"] == null ? "nodata" : json["item_id"],
    itemName: json["item_name"] == null ? "nodata" : json["item_name"],
    packageName: json["package_name"] == null ? "nodata" : json["package_name"],
    itemQty: json["item_qty"] == null ? "nodata" : json["item_qty"],
    price: json["price"] == null ? "nodata" : json["price"],
    itemImg: json["item_img"] == null ? "nodata" : json["item_img"],
  );

  Map<String, dynamic> toJson() => {
    "item_id": itemId == null ? "nodata" : itemId,
    "item_name": itemName == null ? "nodata" : itemName,
    "package_name": packageName == null ? "nodata" : packageName,
    "item_qty": itemQty == null ? "nodata" : itemQty,
    "price": price == null ? "nodata" : price,
    "item_img": itemImg == null ? "nodata" : itemImg,
  };
}
