import 'package:get_storage/get_storage.dart';


 String getLanguageCode(){
  final box = GetStorage();
  final langCode = box.read('lang_code');
  if(langCode==null){
   return "";
  }
  return langCode;
}