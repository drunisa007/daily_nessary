import 'package:get/get.dart';
import 'package:snack_delivery/core/models/order_model.dart';
import 'package:snack_delivery/feature/order_main/controller/order_page_controller.dart';

class OrderDetailController extends GetxController {

  late OrderPageController orderPageController;

  RxList<OrderModel> orderModelListForDetail = RxList<OrderModel>();

  OrderDetailController() {

   orderPageController =  Get.find<OrderPageController>();
   addForOrderDetail();
   print("hahahah${orderModelListForDetail.length}");



  }

  addForOrderDetail() {

   orderPageController.orderModelDetailList.map((model) => orderModelListForDetail.add(model)).toList();
  }
}