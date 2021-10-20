import 'package:get/get.dart';
import 'package:snack_delivery/core/models/order_model.dart';

class OrderPageController extends GetxController {

  List<OrderModel> orderList = [

    OrderModel(orderId: "Order id #001", isOrderFinish: true, orderTime: "12: 34 pm", orderData: "11/11/2021", orderDuationTime: "23:30 hr"),
    OrderModel(orderId: "Order id #002", isOrderFinish: false, orderTime: "12: 34 pm", orderData: "11/11/2021", orderDuationTime: "23:30 hr"),
    OrderModel(orderId: "Order id #003", isOrderFinish: true, orderTime: "12: 34 pm", orderData: "11/11/2021", orderDuationTime: "23:30 hr"),
    OrderModel(orderId: "Order id #004", isOrderFinish: true, orderTime: "12: 34 pm", orderData: "11/11/2021", orderDuationTime: "23:30 hr"),
    OrderModel(orderId: "Order id #005", isOrderFinish: false, orderTime: "12: 34 pm", orderData: "11/11/2021", orderDuationTime: "23:30 hr"),
    OrderModel(orderId: "Order id #005", isOrderFinish: true, orderTime: "12: 34 pm", orderData: "11/11/2021", orderDuationTime: "23:30 hr"),
    OrderModel(orderId: "Order id #006", isOrderFinish: true, orderTime: "12: 34 pm", orderData: "11/11/2021", orderDuationTime: "23:30 hr"),
    OrderModel(orderId: "Order id #007", isOrderFinish: false, orderTime: "12: 34 pm", orderData: "11/11/2021", orderDuationTime: "23:30 hr"),
    OrderModel(orderId: "Order id #008", isOrderFinish: true, orderTime: "12: 34 pm", orderData: "11/11/2021", orderDuationTime: "23:30 hr"),
    OrderModel(orderId: "Order id #009", isOrderFinish: true, orderTime: "12: 34 pm", orderData: "11/11/2021", orderDuationTime: "23:30 hr"),
    OrderModel(orderId: "Order id #010", isOrderFinish: false, orderTime: "12: 34 pm", orderData: "11/11/2021", orderDuationTime: "23:30 hr"),
    OrderModel(orderId: "Order id #010", isOrderFinish: true, orderTime: "12: 34 pm", orderData: "11/11/2021", orderDuationTime: "23:30 hr"),

  ];

  RxList<OrderModel> orderModelList =  RxList<OrderModel>();


  OrderPageController() {
    addToOrderModelList();
    print("order page controller");
  }

  addToOrderModelList() {

    orderModelList = orderList.obs;


  }
}