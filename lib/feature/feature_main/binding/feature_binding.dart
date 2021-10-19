import 'package:get/get.dart';
import 'package:snack_delivery/core/constants/size_config.dart';
import 'package:snack_delivery/feature/cart_main/controller/cart_controller.dart';
import 'package:snack_delivery/feature/feature_main/controller/feature_controller.dart';
import 'package:snack_delivery/feature/home_main/controller/home_controller.dart';

class FeatureBinding extends Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => FeatureController());
   Get.lazyPut(() => SizeConfig());
   Get.lazyPut(() => HomeController());
   Get.lazyPut(() => CartController());
  }

}