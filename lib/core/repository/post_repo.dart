import 'package:get/get.dart';
import 'package:snack_delivery/core/models/http_get_result.dart';
import 'package:snack_delivery/core/models/http_response.dart';
import 'package:snack_delivery/core/models/post_model.dart';
import 'package:snack_delivery/service/http_service.dart';

class PostRepo{

  late HttpService _httpService;

  PostRepo(){
    _httpService = Get.put(HttpService());
  }

  Future<HttpGetResult<PostModel>>  getPost() async {
    HttpResponse result = await _httpService.getData("posts");
    if(result.isSuccessful){
      List<PostModel> parseData = postModelFromJson(result.mData);
      return HttpGetResult('', 200, parseData, true);
    }
    else{
      return HttpGetResult(result.errorMessage, result.stateCode,result.mData, false);
    }
  }
}