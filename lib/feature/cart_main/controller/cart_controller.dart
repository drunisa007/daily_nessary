import 'package:get/get.dart';
import 'package:snack_delivery/core/models/addtocart_model.dart';
import 'package:snack_delivery/core/utils/temp_data.dart';

class CartController extends GetxController{

  RxList<AddToCartModel> mAddToCartList=RxList();


  RxDouble itemCost=0.0.obs;
  RxDouble totalCost=0.0.obs;
  RxDouble deliveryCost = 0.0.obs;


  @override
  void onInit() {
    super.onInit();
    mAddToCartList.addAll(getAddToCartList());

    calculateTotalCost();

  }


  addCount(int index){
     AddToCartModel mOldModel = mAddToCartList[index];
     mOldModel.count=mOldModel.count+1;
     mOldModel.total = mOldModel.price*mOldModel.count;
     mAddToCartList[index]=mOldModel;

     calculateTotalCost();

  }

  removeCount(int index){
    AddToCartModel mOldModel = mAddToCartList[index];
    if(mOldModel.count>1){
      mOldModel.count=mOldModel.count-1;
      mOldModel.total = mOldModel.price*mOldModel.count;
      mAddToCartList[index]=mOldModel;

      calculateTotalCost();
    }
  }

  calculateTotalCost(){
    itemCost.value = 0.0;
    totalCost.value = 0.0;
    deliveryCost.value = 0.0;
    for(AddToCartModel mModel in mAddToCartList){
      double tempItemCost = itemCost.value;
      itemCost = (tempItemCost+mModel.total).obs;
    }

    if(itemCost>=0&&itemCost<3000){
      double tempItemCost = itemCost.value;
      totalCost = (tempItemCost+1000).obs;
      deliveryCost = 1000.0.obs;
    }
    else if(itemCost>=3000&&itemCost<6000){
      double tempItemCost = itemCost.value;
      totalCost = (tempItemCost+500).obs;
      deliveryCost = 500.0.obs;
    }
    else{
      totalCost = itemCost;
      deliveryCost = 0.0.obs;
    }
  }
}