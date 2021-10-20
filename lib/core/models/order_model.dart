import 'dart:convert';

OrderModel orderModelFromJson(String str) => OrderModel.fromJson(json.decode(str));

String orderModelToJson(OrderModel data) => json.encode(data.toJson());

class OrderModel {
  OrderModel({
   required this.orderId,
    required this.isOrderFinish,
   required this.orderTime,
   required this.orderData,
   required this.orderDuationTime,
  });

  String orderId;
  bool isOrderFinish;
  String orderTime;
  String orderData;
  String orderDuationTime;

  factory OrderModel.fromJson(Map<String, dynamic> json) => OrderModel(
    orderId: json["orderId"],
    isOrderFinish: json["isOrderFinish"],
    orderTime: json["orderTime"],
    orderData: json["orderData"],
    orderDuationTime: json["orderDuationTime"],
  );

  Map<String, dynamic> toJson() => {
    "orderId": orderId,
    "isOrderFinish": isOrderFinish,
    "orderTime": orderTime,
    "orderData": orderData,
    "orderDuationTime": orderDuationTime,
  };
}
