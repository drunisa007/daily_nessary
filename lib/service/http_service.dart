import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:snack_delivery/core/constants/all_keys.dart';
import 'package:snack_delivery/core/models/http_response.dart';
import 'package:snack_delivery/core/models/language_model.dart';
import 'package:snack_delivery/core/utils/getlanuage_code.dart';
import 'package:snack_delivery/core/utils/lanuagesutil.dart';
class HttpService{

  late String baseUrl;
  late String apiKey;

  HttpService(){
    initData();
  }

  Future<HttpResponse> getData(uri) async {
    try{

    // ,headers: getHeader()
      var url = Uri.parse(baseUrl+uri);
      http.Response response  = await http.get(url);
      if(response.statusCode==200){
        return HttpResponse('', 200, response.body, true);
      }
      else{
        return HttpResponse('Something went wrong', 400, '', false);
      }
    }
    on FormatException catch(_){
      return HttpResponse('Something went wrong on server', 400, '', false);
    }
    on SocketException catch(_){
      return HttpResponse('Something went wrong with internet', 400, '', false);
    }
    catch(e){
      return HttpResponse('Something went wrong', 400, '', false);
    }
  }

  Future<HttpResponse> getDataWithJson(uri) async {
    try{
      var url = Uri.parse(uri);
      http.Response response  = await http.get(url);
      if(response.statusCode==200){
        return HttpResponse('', 200, response.body, true);
      }
      else{
        return HttpResponse('Something went wrong', 400, '', false);
      }
    }
    on FormatException catch(_){
      return HttpResponse('Something went wrong on server', 400, '', false);
    }
    on SocketException catch(_){
      return HttpResponse('Something went wrong with internet', 400, '', false);
    }
    catch(e){
      return HttpResponse('Something went wrong', 400, '', false);
    }
  }

  initData(){
    baseUrl = "$API_KEY";
    apiKey = "343434";
  }

  getHeader(){
    var langCode =  getLanguageCode();
   List<LanguageModel> mList = LanguageUtil().getLanguage();
   if(langCode.isNotEmpty){
     return {
       "Content-Type": "application/json",
       "Accept": "application/json",
       "Content-Language":"${mList[int.parse(langCode)].fullCode[0]}"
     };
   }


  }

}