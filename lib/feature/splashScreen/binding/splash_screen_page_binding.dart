import 'package:get/get.dart';
import 'package:snack_delivery/core/constants/size_config.dart';

class SplashScreenPageBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies


    Get.put(SizeConfig());
  }


}