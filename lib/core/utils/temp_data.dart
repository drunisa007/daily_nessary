import 'package:snack_delivery/core/models/addtocart_model.dart';
import 'package:snack_delivery/core/models/deliveryfee_model.dart';

List<AddToCartModel> _mAddToCartList = [
  AddToCartModel(
      id: "00001",
      title: "Snack One",
      image: "https://dl.dropbox.com/s/6efyl0l85xlwe4g/sea.jpg?dl=0",
      quantity: "3 Pcs",
      price: 300.0,
      total: 300.0,
      count: 1,
      deleted: false),
  AddToCartModel(
      id: "00002",
      title: "Snack Two",
      image: "https://dl.dropbox.com/s/key5kjc3ltynroi/meat.jpg?dl=0",
      quantity: "3 Pcs",
      price: 300.0,
      total: 600.0,
      count: 2,
      deleted: false),
  AddToCartModel(
      id: "00003",
      title: "Snack Three",
      image: "https://dl.dropbox.com/s/cfko92yur0yfii5/watch.jpg?dl=0",
      quantity: "5 Pcs",
      price: 500.0,
      total: 2500.0,
      count: 5,
      deleted: false),
  AddToCartModel(
      id: "00004",
      title: "Snack Four",
      image: "https://dl.dropbox.com/s/cfko92yur0yfii5/watch.jpg?dl=0",
      quantity: "5 Pcs",
      price: 500.0,
      total: 2500.0,
      count: 5,
      deleted: false)
];


List<AddToCartModel> getAddToCartList(){
  return _mAddToCartList;
}


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



