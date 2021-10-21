import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:snack_delivery/feature/opt_screen/view/otp_page.dart';

class OtpPageController extends GetxController {

  RxList<String> mOptCodeList = RxList();

  RxInt codePosition = RxInt(0);

  TextEditingController mAllCodeController = TextEditingController();


  OtpPageController(){
    for(int i=0;i<6;i++){
      mOptCodeList.add(" ");
    }
  }

  addSingleNewCode(BuildContext context, FocusNode inputNode){
    if(mAllCodeController.text.toString().isNotEmpty){
      int tempPositon = mAllCodeController.text.toString().length-1;
      mOptCodeList[tempPositon]=mAllCodeController.text.toString()[tempPositon];
      print(mOptCodeList);
      if(tempPositon==5){
        codePosition.value = tempPositon;
        print('tempPosition is 6 now');
        FocusScope.of(context).unfocus();
      }

    }

  }

}