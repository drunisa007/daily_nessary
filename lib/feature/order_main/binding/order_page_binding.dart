import 'package:get/get.dart';
import 'package:snack_delivery/core/constants/size_config.dart';
import 'package:snack_delivery/feature/order_main/controller/order_page_controller.dart';

class OrderPageBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies

    Get.put(OrderPageController());
    Get.put(SizeConfig());
  }



}