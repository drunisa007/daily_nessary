import 'package:get/get.dart';
import 'package:snack_delivery/core/constants/size_config.dart';
import 'package:snack_delivery/feature/profile_info_page/controller/profile_info_page_controller.dart';

class ProfileInfoPageBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies

    Get.put(ProfileInfoPageController());
    Get.put(SizeConfig());
  }



}