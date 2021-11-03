import 'package:get/get.dart';
import 'package:snack_delivery/core/models/address_model.dart';
import 'package:snack_delivery/core/models/http_response.dart';
import 'package:snack_delivery/service/http_post_service.dart';

class AddressPostRepo {
  late HttpPostService _httpPostService;
  AddressPostRepo(){

    _httpPostService = Get.put(HttpPostService());
  }
  Future<void> postAddresData(AddressModel addressModel) async {

    HttpResponse response = await _httpPostService.postAddress(addressModel);
  }


}