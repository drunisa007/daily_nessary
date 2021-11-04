import 'dart:convert';

import 'package:get/get.dart';
import 'package:snack_delivery/core/models/address_model.dart';
import 'package:snack_delivery/core/models/http_get_result.dart';
import 'package:snack_delivery/core/models/http_response.dart';
import 'package:snack_delivery/core/models/township_model.dart';
import 'package:snack_delivery/service/http_post_service.dart';
import 'package:snack_delivery/service/http_service.dart';

class AddressPostRepo {
  late HttpPostService _httpPostService;
  late HttpService _httpService;
  AddressPostRepo(){

    _httpPostService = Get.put(HttpPostService());
    _httpService = Get.put(HttpService());
  }
  Future<void> postAddresData(AddressModel addressModel) async {

    HttpResponse response = await _httpPostService.postAddress(addressModel);
  }



  Future<HttpGetResult<AddressModel>> getAddress() async{


    HttpResponse result =  await _httpService.getData("customer/selectaddress.php?cusid=39");

    if(result.isSuccessful){
      Map tempJson = jsonDecode(result.mData);
      String tempData = jsonEncode(tempJson["output"]["data"]);


     List<AddressModel> parseData = addressModelFromJson(tempData);
     print(parseData);

      return HttpGetResult('', 200, parseData, true);
    }
    else{
      return HttpGetResult(result.errorMessage, result.stateCode,result.mData, false);
    }
  }

 /*Future<HttpGetResult<TownshipModel>> getTownshipList() async{
    
    
    var uri = Uri.parse("region/?view=all");

    HttpResponse result = await _httpService.getData(uri);


    if(result.isSuccessful){
      Map tempJson = jsonDecode(result.mData);
      String tempData = jsonEncode(tempJson["output"]["data"]);

      print("temp data test $tempData");
      List<TownshipModel> parseData = townshipModelFromJson(tempData);



      return HttpGetResult('', 200, parseData, true);
    }
    else{

      print("got error on address city");
      return HttpGetResult(result.errorMessage, result.stateCode,result.mData, false);
    }



  }
*/
}