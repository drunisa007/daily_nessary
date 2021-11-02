import 'package:get/get.dart';
import 'package:snack_delivery/core/repository/item_repo.dart';
import 'package:snack_delivery/core/repository/type_repo.dart';
import 'package:snack_delivery/feature/all_item/controller/all_item_controller.dart';

class AllItemBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ItemRepo());
    Get.lazyPut(() => TypeRepo());
    Get.lazyPut(() => AllItemController());
  }
}
