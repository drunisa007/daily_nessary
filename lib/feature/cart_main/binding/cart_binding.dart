import 'package:get/get.dart';
import 'package:snack_delivery/feature/cart_main/controller/cart_controller.dart';

class CartBinding extends Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => CartController());
  }

}