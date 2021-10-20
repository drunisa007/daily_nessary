import 'package:get/get.dart';
import 'package:snack_delivery/feature/item_detail/controller/item_detail_controller.dart';

class ItemDetailBinding extends Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => ItemDetailController());
  }

}