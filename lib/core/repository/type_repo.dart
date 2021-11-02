import 'dart:convert';

import 'package:get/get.dart';
import 'package:snack_delivery/core/models/category_model.dart';
import 'package:snack_delivery/core/models/http_get_result.dart';
import 'package:snack_delivery/core/models/http_response.dart';
import 'package:snack_delivery/core/models/item_model.dart';
import 'package:snack_delivery/core/models/type_model.dart';
import 'package:snack_delivery/service/http_service.dart';

class TypeRepo{

  late HttpService _httpService;

  TypeRepo(){
    _httpService = Get.put(HttpService());
  }

  Future<HttpGetResult<TypeModel>>  getType(categoryId) async {
    HttpResponse result = await _httpService.getData("Type/?view=$categoryId");
    if(result.isSuccessful){
      Map tempJson = jsonDecode(result.mData);
      String tempData = jsonEncode(tempJson["output"]["data"]);
      List<TypeModel> parseData = typeModelFromJson(tempData);
      return HttpGetResult('', 200, parseData, true);
    }
    else{
      return HttpGetResult(result.errorMessage, result.stateCode,result.mData, false);
    }
  }
}