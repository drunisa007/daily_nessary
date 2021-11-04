import 'dart:convert';

import 'package:get/get.dart';
import 'package:snack_delivery/core/models/http_get_result.dart';
import 'package:snack_delivery/core/models/http_response.dart';
import 'package:snack_delivery/core/models/item_detail_model.dart';
import 'package:snack_delivery/service/http_service.dart';

class ItemDetailRepo{

  late HttpService _httpService;

  ItemDetailRepo(){
    _httpService = Get.put(HttpService());
  }

  Future<HttpGetResult<ItemDetailModel>>  getItemDetail(itemId) async {
    HttpResponse result = await _httpService.getData("Item/?itemid=$itemId");

    if(result.isSuccessful){
      Map tempJson = jsonDecode(result.mData);
      String tempData = jsonEncode(tempJson["output"]);
      List<ItemDetailModel> parseData = itemDetailModelFromJson(tempData);
      return HttpGetResult('', 200, parseData, true);
    }
    else{
      return HttpGetResult(result.errorMessage, result.stateCode,result.mData, false);
    }
  }
}