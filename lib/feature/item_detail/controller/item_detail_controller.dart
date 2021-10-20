import 'package:get/get.dart';
import 'package:snack_delivery/core/models/package_model.dart';
import 'package:snack_delivery/core/utils/temp_data.dart';

class ItemDetailController extends GetxController{

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

  changeRadioValue(int index){
    groupValue.value = index;
    tempPrice.value = mPackageList[index-1].price;
  }

  ///total price
  RxDouble totalPrice = RxDouble(0.0);
  RxDouble tempPrice = RxDouble(0.0);

  changeTotalPrice(){
    if(tempPrice>0){
      print('working');
      totalPrice.value = totalPrice.value+tempPrice.value;
      tempPrice.value = 0.0;
      groupValue.value = -1;
    }

  }



}