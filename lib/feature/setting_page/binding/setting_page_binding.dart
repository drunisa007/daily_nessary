import 'package:get/get.dart';
import 'package:snack_delivery/core/constants/size_config.dart';
import 'package:snack_delivery/feature/setting_page/controller/setting_page_controller.dart';

class SettingPageBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies

    Get.put(SettingPageController());
    Get.put(SizeConfig());
  }


}