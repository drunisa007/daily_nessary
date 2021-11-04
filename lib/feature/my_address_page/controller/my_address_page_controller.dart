import 'package:get/get.dart';
import 'package:snack_delivery/core/models/address_model.dart';
import 'package:snack_delivery/core/models/http_get_result.dart';
import 'package:snack_delivery/core/repository/address_post_repo.dart';

class MyAddressPageController extends GetxController {


  RxList<AddressModel> allAddressList = RxList<AddressModel>();
  AddressPostRepo addressPostRepo = Get.put(AddressPostRepo());

  MyAddressPageController() {

    print("this is my address page controller");
    getAddress();


  }


  getAddress() async{
  HttpGetResult<AddressModel> getResult =  await addressPostRepo.getAddress();
  allAddressList.addAll(getResult.mData);


  }


  deleteAddress(int index) {

    allAddressList.removeAt(index);




  }






}