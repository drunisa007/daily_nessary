import 'package:get/get.dart';
import 'package:snack_delivery/core/models/address_model.dart';
import 'package:snack_delivery/core/repository/address_post_repo.dart';
import 'package:snack_delivery/feature/my_address_page/controller/my_address_page_controller.dart';

class AddAddressPageController extends GetxController {

  var chosenValue ;
  RxList<AddressModel> addressList = RxList<AddressModel> ();

 late MyAddressPageController myAddressPageController;

 late AddressPostRepo addressPostRepo;

  AddAddressPageController() {
    print("add address page controller initialize");
    addressPostRepo = Get.put(AddressPostRepo());
  }


  changeDropDownValue(String value) {

    chosenValue = value;
    myAddressPageController = Get.find<MyAddressPageController>();
    update();
  }

  addAddress(String customerId,String regionName, String customerAddress) {

    addressList.add(AddressModel(cusId: customerId,reg_name: regionName, regId: regionName ,cusAddress: customerAddress));
    myAddressPageController.allAddressList.add(AddressModel(cusId: customerId, regId: regionName ,cusAddress: customerAddress,reg_name: regionName));
     addressPostRepo.postAddresData(AddressModel(cusId: "39", regId: "1" ,cusAddress: customerAddress,reg_name: regionName));
    print(myAddressPageController.allAddressList.length);


  }



}