import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:snack_delivery/core/constants/all_keys.dart';
import 'package:snack_delivery/core/models/address_model.dart';
import 'package:snack_delivery/core/models/http_response.dart';
import 'package:snack_delivery/core/utils/authis_valid_ornot.dart';
class HttpPostService {
  late String baseUrl;
  late String apiKey;

  HttpPostService() {

    initData();
  }

  ///this will use to send address data
  Future<HttpResponse> postAddress(AddressModel addressModel) async {

    var uri=  Uri.parse('$API_KEY/customer/address.php');
    final response = await http.post(
      uri,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer ${getAPIBox()}',
      },
      body: jsonEncode(addressModel.toJson()));

    if (response.statusCode == 200) {

      print("success");
      return HttpResponse('', 200, "", true);

    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      print(response.statusCode);

      throw Exception('Failed to add address');
    }
  }
  initData(){
    baseUrl = "$API_KEY";
    apiKey = "343434";
  }
}