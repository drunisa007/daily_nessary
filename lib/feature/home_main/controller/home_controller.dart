
import 'package:get/get.dart';
import 'package:snack_delivery/core/models/category_model.dart';
import 'package:snack_delivery/core/models/http_get_result.dart';
import 'package:snack_delivery/core/repository/category_repo.dart';

class HomeController extends GetxController{


  CategoryRepo _categoryRepo=Get.put(CategoryRepo());

  RxList<CategoryModel> mCategoryList=RxList();
  RxString errorMessage = "".obs;
  RxBool showLoading=false.obs;



  @override
  void onInit() {
    super.onInit();
   fetchingCategoryList();

  }


  fetchingCategoryList() async {

    showLoadingForFetchingCategoryList();
    HttpGetResult<CategoryModel> result = await _categoryRepo.getCategory();
    hideLoadingForFetchingCategoryList();
    if(result.isSuccessful){
      mCategoryList.addAll(result.mData);
    }
    else{
      errorMessage.value= result.errorMessage;
    }
  }

  showLoadingForFetchingCategoryList(){
    showLoading.toggle();
  }

  hideLoadingForFetchingCategoryList(){
    showLoading.toggle();
  }

}