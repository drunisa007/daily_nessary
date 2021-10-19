import 'dart:convert';

import 'package:get/get.dart';
import 'package:snack_delivery/core/models/category_model.dart';
import 'package:snack_delivery/core/models/http_get_result.dart';
import 'package:snack_delivery/core/models/http_response.dart';
import 'package:snack_delivery/service/http_service.dart';

class CategoryRepo{

  late HttpService _httpService;

  CategoryRepo(){
    _httpService = Get.put(HttpService());
  }

  Future<HttpGetResult<CategoryModel>>  getCategory() async {
    HttpResponse result = await _httpService.getData("Category/index.php?view=all");
    if(result.isSuccessful){
      Map tempJson = jsonDecode(result.mData);
      String tempData = jsonEncode(tempJson["output"]["data"]);
      List<CategoryModel> parseData = categoryModelFromJson(tempData);
      return HttpGetResult('', 200, parseData, true);
    }
    else{
      return HttpGetResult(result.errorMessage, result.stateCode,result.mData, false);
    }
  }
}