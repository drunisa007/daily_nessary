import 'package:get/get.dart';
import 'package:snack_delivery/core/models/address_model.dart';

class MyAddressPageController extends GetxController {


  RxList<AddressModel> allAddressList = RxList<AddressModel>();

  MyAddressPageController() {

    print("this is my address page controller");
  }



  deleteAddress(int index) {

    allAddressList.removeAt(index);




  }






}