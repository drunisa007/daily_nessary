import 'package:get/get.dart';
import 'package:snack_delivery/core/constants/size_config.dart';
import 'package:snack_delivery/feature/feature_main/controller/feature_controller.dart';

class FeatureBinding extends Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => FeatureController());
   Get.put(SizeConfig());
  }

}