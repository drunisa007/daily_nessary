import 'package:get/get.dart';
import 'package:snack_delivery/core/constants/size_config.dart';
import 'package:snack_delivery/feature/my_address_page/controller/my_address_page_controller.dart';

class MyAddressPageBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(MyAddressPageController());
    Get.put(SizeConfig());
  }


}