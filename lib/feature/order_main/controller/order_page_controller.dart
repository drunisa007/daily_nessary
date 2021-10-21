import 'package:get/get.dart';
import 'package:snack_delivery/core/models/order_model.dart';

class OrderPageController extends GetxController {

  List<OrderModel> orderList = [

    OrderModel(orderId: "Order id #001", isOrderFinish: true, orderTime: "12: 34 pm", orderDate: "11/11/2021", orderDuationTime: "23:30 hr",orderTown: "Mandalay",orderAddress: "45 E 80 St yangon"),
    OrderModel(orderId: "Order id #002", isOrderFinish: false, orderTime: "10: 11 pm", orderDate: "1/2/2021", orderDuationTime: "13:23 hr",orderTown: "Yangon",orderAddress: "35 St Pagoda road Thingyangyun"),

  ];

  RxList<OrderModel> orderModelList =  RxList<OrderModel>();
  RxList<OrderModel> orderModelDetailList =  RxList<OrderModel>();


  OrderPageController() {
    addToOrderModelList();
    print("order page controller");
  }

  addToOrderModelList() {

    orderModelList = orderList.obs;

  }

  addToOrderDetailModel(int index) {

    orderModelDetailList.clear();

    orderModelDetailList.add(OrderModel(orderId: orderList[index].orderId, isOrderFinish: orderList[index].isOrderFinish, orderTime: orderList[index].orderTime, orderDate: orderList[index].orderDate,
        orderDuationTime: orderList[index].orderDuationTime,
        orderTown: orderList[index].orderTown, orderAddress: orderList[index].orderAddress));

    print(orderModelDetailList.length);
  }
}