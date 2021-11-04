import 'package:get/get.dart';
import 'package:snack_delivery/core/repository/item_detail_repo.dart';
import 'package:snack_delivery/core/repository/item_repo.dart';
import 'package:snack_delivery/feature/cart_main/controller/cart_controller.dart';
import 'package:snack_delivery/feature/item_detail/controller/item_detail_controller.dart';

class ItemDetailBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => ItemDetailRepo());
    Get.lazyPut(() => CartController());
   Get.lazyPut(() => ItemDetailController());

  }

}