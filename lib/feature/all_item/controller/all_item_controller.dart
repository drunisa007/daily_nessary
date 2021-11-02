import 'package:get/get.dart';
import 'package:snack_delivery/core/models/http_get_result.dart';
import 'package:snack_delivery/core/models/item_model.dart';
import 'package:snack_delivery/core/models/type_model.dart';
import 'package:snack_delivery/core/repository/item_repo.dart';
import 'package:snack_delivery/core/repository/type_repo.dart';

class AllItemController extends GetxController{

  /// all item list by category Id
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


  /// all type list by category Id
  RxList<TypeModel> mTypeList = RxList();
  TypeRepo _typeRepo = Get.find<TypeRepo>();
  RxString errorMessageType = "".obs;
  RxBool showLoadingType=false.obs;


  fetchType(String categoryId) async {

    mTypeList.clear();
    showLoadingForFetchingTypeList();
    HttpGetResult<TypeModel> result = await _typeRepo.getType(categoryId);
    hideLoadingForFetchingTypeList();
    if(result.isSuccessful){
      mTypeList.addAll(result.mData);
      print(mTypeList);
    }
    else{
      errorMessageType.value= result.errorMessage;
    }
  }

  showLoadingForFetchingTypeList(){
    showLoadingType.toggle();
  }

  hideLoadingForFetchingTypeList(){
    showLoadingType.toggle();
  }

}