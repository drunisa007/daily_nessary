import 'package:get/get.dart';
import 'package:snack_delivery/core/models/addtocart_model.dart';
import 'package:snack_delivery/core/models/http_get_result.dart';
import 'package:snack_delivery/core/models/item_detail_model.dart';
import 'package:snack_delivery/core/models/item_detail_noimage_model.dart';
import 'package:snack_delivery/core/models/package_model.dart';
import 'package:snack_delivery/core/repository/item_detail_repo.dart';
import 'package:snack_delivery/core/utils/temp_data.dart';
import 'package:snack_delivery/feature/cart_main/controller/cart_controller.dart';

class ItemDetailController extends GetxController {
  ItemDetailRepo _itemDetailRepo = Get.find<ItemDetailRepo>();
  RxList<ItemDetailModel> mItemDetailList = RxList();
  RxString errorMessage = "".obs;
  RxBool showLoading = false.obs;

  RxList<ItemDetailNoImageModel> mItemDetailNoImage = RxList();
  RxList<String> mItemDetailImages = RxList();
  RxList<int> mItemDetailImageInt = RxList();

  ///for cart controller
  CartController mCartController = Get.find<CartController>();

  fetchItemDetail(String itemId) async {
    showLoadingForItemDetailList();
    HttpGetResult<ItemDetailModel> result =
        await _itemDetailRepo.getItemDetail(itemId);
    if (result.isSuccessful) {
      for (ItemDetailModel mModel in result.mData) {
        if (mModel.itemImg == "nodata") {
          mItemDetailNoImage.add(ItemDetailNoImageModel(
              itemId: mModel.itemId,
              itemName: mModel.itemName,
              packageName: mModel.packageName,
              itemQty: mModel.itemQty,
              price: mModel.price));
        } else {
           String tempImageName = mModel.itemImg;
           String find = "localhost/DailyMdy/";
           String replace = "https://seinwholesale.com/";
           String newImage = tempImageName.replaceAll(find, replace);
           mItemDetailImages.add(newImage);
        }
      }
    } else {
      errorMessage.value = result.errorMessage;
    }
    for (int i = 1; i <= mItemDetailImages.length; i++) {
      mItemDetailImageInt.add(i);
    }
    hideLoadingForFetchingItemDetailList();
    update();
  }

  showLoadingForItemDetailList() {
    showLoading.toggle();
  }

  hideLoadingForFetchingItemDetailList() {
    showLoading.toggle();
  }

  late int currentIndexBanner = 0;

  List<PackageModel> mPackageList = getPackagesList();

  ///banner change design
  changeCurrentIndex(int index) {
    print(index);
    currentIndexBanner = index;
    update();
  }

  ///Radios Value
  RxInt groupValue = RxInt(-1);

  changeRadioValue(int index) {
    groupValue.value = index;
    tempPrice.value = mPackageList[index - 1].price;
  }

  ///total price
  RxDouble totalPrice = RxDouble(0.0);
  RxDouble tempPrice = RxDouble(0.0);

  changeTotalPrice() {
    if (tempPrice > 0) {
      print('working');
      totalPrice.value = totalPrice.value + tempPrice.value;
      mCartController.addNewDataToCart(AddToCartModel(
          id: mItemDetailNoImage[0].itemId,
          title: mItemDetailNoImage[0].itemName,
          image: mItemDetailImages[0],
          quantity:mItemDetailNoImage[groupValue.value-1].itemQty,
          package:mItemDetailNoImage[groupValue.value-1].packageName ,
          price: double.parse(mItemDetailNoImage[groupValue.value-1].price.trim()),
          total: totalPrice.value,
         ));
      tempPrice.value = 0.0;
      groupValue.value = -1;
    }
  }
}
