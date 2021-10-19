import 'package:get/get.dart';
import 'package:snack_delivery/core/constants/size_config.dart';
import 'package:snack_delivery/feature/splashScreen/controller/splash_screen_page_controller.dart';

class SplashScreenPageBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies


    Get.put(SplashSreenPageController());
    Get.put(SizeConfig());
  }


}