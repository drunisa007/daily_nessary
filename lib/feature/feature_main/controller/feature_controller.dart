import 'package:get/get.dart';
import 'package:snack_delivery/core/models/http_register_result.dart';
import 'package:snack_delivery/core/models/http_response.dart';
import 'package:snack_delivery/core/models/register_model.dart';
import 'package:snack_delivery/core/repository/register_repo.dart';
import 'package:snack_delivery/core/utils/authis_valid_ornot.dart';

class FeatureController extends GetxController{
  late RxInt currentIndex;



  FeatureController() {
    currentIndex = 0.obs;
  }

  changeIndex(int index) {
    currentIndex.value = index;
  }

  int getIndex() {
    return currentIndex.value;
  }


  /// 0 is loading state
  /// 1 is login page state
  /// 2 is main page state
  RxInt authPosition = 0.obs;

  @override
  void onInit() {
    super.onInit();
    String data = getAuth();

    if(data=="fail"){
      authPosition.value =1;
    }
    else if(data=="success"){
      authPosition.value=2;
    }
    else{
      authPosition.value = 0;
    }
  }

  changeAuthPosition(int position){
    authPosition.value = position;
  }

  ///register route
  RegisterRepo mRegisterRepo = Get.find<RegisterRepo>();

   letsRegister() async {
     HttpRegisterResult result =  await mRegisterRepo.getRegister();
     if(result.isSuccessful){
      RegisterModel mModel = result.mData;
     // print(mModel.customer[0].token);

      writeAuth();
      writeAPIKey(mModel.customer[0].token);
      writeCustomer(mModel.customer[0].cusId);

      changeAuthPosition(2);

     }
   }

}