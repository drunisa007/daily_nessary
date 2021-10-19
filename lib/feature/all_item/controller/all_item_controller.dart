import 'package:get/get.dart';
import 'package:snack_delivery/core/models/http_get_result.dart';
import 'package:snack_delivery/core/models/item_model.dart';
import 'package:snack_delivery/core/repository/item_repo.dart';

class AllItemController extends GetxController{

  RxList<ItemModel> mItemList = RxList();


  ItemRepo _itemRepo = Get.find<ItemRepo>();
  RxString errorMessage = "".obs;
  RxBool showLoading=false.obs;


  fetchItem(String categoryId) async {

    mItemList.clear();
    showLoadingForFetchingItemList();
    HttpGetResult<ItemModel> result = await _itemRepo.getItem(categoryId);
    hideLoadingForFetchingItemList();
    if(result.isSuccessful){
      mItemList.addAll(result.mData);
      print(mItemList);
    }
    else{
      errorMessage.value= result.errorMessage;
    }
  }

  showLoadingForFetchingItemList(){
    showLoading.toggle();
  }

  hideLoadingForFetchingItemList(){
    showLoading.toggle();
  }

}