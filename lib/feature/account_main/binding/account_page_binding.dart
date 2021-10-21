import 'package:get/get.dart';
import 'package:snack_delivery/core/constants/size_config.dart';
import 'package:snack_delivery/feature/account_main/controller/account_page_controller.dart';

class AccountPageBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies

    Get.put(AccountPageController());
    Get.put(SizeConfig());
  }


}