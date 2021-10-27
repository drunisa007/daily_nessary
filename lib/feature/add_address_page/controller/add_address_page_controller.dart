import 'package:get/get.dart';

class AddAddressPageController extends GetxController {

  var chosenValue ;

  AddAddressPageController() {
    print("add address page controller initialize");
  }

  changeDropDownValue(String value) {

    chosenValue = value;
    update();
  }
}