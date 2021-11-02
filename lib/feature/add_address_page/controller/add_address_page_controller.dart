import 'package:get/get.dart';
import 'package:snack_delivery/core/models/address_model.dart';
import 'package:snack_delivery/feature/my_address_page/controller/my_address_page_controller.dart';

class AddAddressPageController extends GetxController {

  var chosenValue ;
  RxList<AddressModel> addressList = RxList<AddressModel> ();

 late MyAddressPageController myAddressPageController;

  AddAddressPageController() {
    print("add address page controller initialize");
  }


  changeDropDownValue(String value) {

    chosenValue = value;
    myAddressPageController = Get.find<MyAddressPageController>();
    update();
  }

  addAddress(String customerId,String regionName, String customerAddress) {

    addressList.add(AddressModel(cusId: customerId, regId: regionName ,cusAddress: customerAddress));
    myAddressPageController.allAddressList.add(AddressModel(cusId: customerId, regId: regionName ,cusAddress: customerAddress));
    print(myAddressPageController.allAddressList.length);


  }



}