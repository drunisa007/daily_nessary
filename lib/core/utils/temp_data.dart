import 'package:snack_delivery/core/models/addtocart_model.dart';
import 'package:snack_delivery/core/models/deliveryfee_model.dart';
import 'package:snack_delivery/core/models/package_model.dart';


List<String> _mTestingImages=[
  "https://dl.dropbox.com/s/6efyl0l85xlwe4g/sea.jpg?dl=0",
  "https://dl.dropbox.com/s/key5kjc3ltynroi/meat.jpg?dl=0",
  "https://dl.dropbox.com/s/cfko92yur0yfii5/watch.jpg?dl=0"
];

List<String> getTestingImageList(){
  return _mTestingImages;
}


List<DeliveryFeeModel> _mDeliveryFeeList=[
  DeliveryFeeModel(range: "From 1 Ks to 3000 Ks", price: "1000 Ks"),
  DeliveryFeeModel(range: "From 3000 Ks to 6000 Ks", price: "500 Ks"),
  DeliveryFeeModel(range: "Above 6000Ks", price: "O Ks")
];


List<DeliveryFeeModel> getDeliveryFeeList(){
  return _mDeliveryFeeList;
}


List<PackageModel> _mPackagesList=[
  PackageModel(packageName: "3 ခု", save: 0, price: 650),
  PackageModel(packageName: "6 ခု", save: 100, price: 1200),
  PackageModel(packageName: "1 ပါကင် (14 ခု)", save: 333, price: 2700),
];


List<PackageModel> getPackagesList() {
  return _mPackagesList;
}



