import 'package:get/get.dart';
import 'package:snack_delivery/core/constants/size_config.dart';
import 'package:snack_delivery/feature/order_detail/controller/order_detail_controller.dart';
import 'package:snack_delivery/feature/order_main/controller/order_page_controller.dart';

class OrderDetailBinding extends Bindings {





  @override
  void dependencies() {
    // TODO: implement dependencies

    Get.put(OrderDetailController());
    Get.put(OrderPageController());
    Get.put(SizeConfig());
  }}