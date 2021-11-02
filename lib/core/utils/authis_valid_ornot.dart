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
  var data =  box.get("key")??"nokey";
  return data;
}

writeAPIKey(key){
  var box = Hive.box("apiBox");
  box.put("key", "$key");
}


String getCustomerBox() {
  var box = Hive.box("customerBox");
  var data =  box.get("cus")??"nocus";
  return data;
}

writeCustomer(customer){
  var box = Hive.box("customerBox");
  box.put("cus", "$customer");
}
