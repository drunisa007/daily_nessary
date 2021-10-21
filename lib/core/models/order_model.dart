import 'dart:convert';


OrderModel orderModelFromJson(String str) => OrderModel.fromJson(json.decode(str));

String orderModelToJson(OrderModel data) => json.encode(data.toJson());

class OrderModel {
  OrderModel({
   required this.orderId,
   required this.isOrderFinish,
   required this.orderTime,
   required this.orderDate,
   required this.orderDuationTime,
   required this.orderTown,
   required this.orderAddress,
  });

  String orderId;
  bool isOrderFinish;
  String orderTime;
  String orderDate;
  String orderDuationTime;
  String orderTown;
  String orderAddress;

  factory OrderModel.fromJson(Map<String, dynamic> json) => OrderModel(
    orderId: json["orderId"],
    isOrderFinish: json["isOrderFinish"],
    orderTime: json["orderTime"],
    orderDate: json["orderDate"],
    orderDuationTime: json["orderDuationTime"],
    orderTown: json["orderTown"],
    orderAddress: json["orderAddress"],
  );

  Map<String, dynamic> toJson() => {
    "orderId": orderId,
    "isOrderFinish": isOrderFinish,
    "orderTime": orderTime,
    "orderDate": orderDate,
    "orderDuationTime": orderDuationTime,
    "orderTown": orderTown,
    "orderAddress": orderAddress,
  };
}
