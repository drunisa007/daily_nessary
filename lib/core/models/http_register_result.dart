
import 'package:snack_delivery/core/models/register_model.dart';

class HttpRegisterResult<T>{
  bool isSuccessful=true;
  String errorMessage='';
  int statusCode = 400;
  late T mData;


  HttpRegisterResult(this.errorMessage, this.statusCode, this.mData,this.isSuccessful);
}