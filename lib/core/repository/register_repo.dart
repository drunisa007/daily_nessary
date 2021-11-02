
import 'package:get/get.dart';
import 'package:snack_delivery/core/models/http_register_result.dart';
import 'package:snack_delivery/core/models/http_response.dart';
import 'package:snack_delivery/core/models/register_model.dart';
import 'package:snack_delivery/service/http_service.dart';

class RegisterRepo {

  late HttpService _httpService;

  RegisterRepo() {
    _httpService = Get.put(HttpService());
  }

  Future<HttpRegisterResult<RegisterModel>> getRegister() async {
    HttpResponse result = await _httpService.getData(
        "customer/register.php");
    if (result.isSuccessful) {
      RegisterModel parseData = registerModelFromJson(result.mData);
      return HttpRegisterResult('', 200, parseData, true);
    }
    else {
      return HttpRegisterResult(
          result.errorMessage, result.stateCode, result.mData, false);
    }
  }
}