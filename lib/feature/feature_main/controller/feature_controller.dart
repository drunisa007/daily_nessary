import 'package:get/get.dart';

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
}