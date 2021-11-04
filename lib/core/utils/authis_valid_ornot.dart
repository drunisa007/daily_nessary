import 'package:get_storage/get_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';

String getAuth() {
  var box = Hive.box("authBox");
  var data =  box.get("login")??"fail";
   return data;
}


 writeAuth(){
   var box = Hive.box("authBox");
   box.put("login", "success");
}


 logoutAuth(){
   var box = Hive.box("authBox");
   box.put("login", "fail");

   var boxKey = Hive.box("apiBox");
   boxKey.put("key", "nokey");

   var boxCustomer = Hive.box("customerBox");
   boxCustomer.put("cus", "nocus");
}


String getAPIBox() {
  var box = Hive.box("apiBox");
  var data =  box.get("key")??"2177131a1d8cddc76c80b22ad037427aa99d6f4188b778fcd092602f75f7d2e230e5e2c904cd28451704caf003cd09b781ae7a58fd6907d6c0a76636294ad564";
  return data;
}

writeAPIKey(key){
  var box = Hive.box("apiBox");
  box.put("key", "$key");
}


String getCustomerBox() {
  var box = Hive.box("customerBox");
  var data =  box.get("cus")??"39";
  return data;
}

writeCustomer(customer){
  var box = Hive.box("customerBox");
  box.put("cus", "$customer");
}
