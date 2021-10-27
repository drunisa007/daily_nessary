import 'package:get/get.dart';
import 'package:snack_delivery/core/constants/size_config.dart';
import 'package:snack_delivery/feature/add_address_page/controller/add_address_page_controller.dart';

class AddAddressPageBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(AddAddressPageController());
    Get.put(SizeConfig());

  }



}