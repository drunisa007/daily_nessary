import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpPageController extends GetxController {
  bool hasError = false;
 // String currentText = "";
  //final formKey = GlobalKey<FormState>();

  OtpPageBinding() {

    print("Otp page Controller");

  }

 checkOtp(GlobalKey<FormState>  formKey,String currentText,
  StreamController<ErrorAnimationType>? errorController) {

/*

    formKey.currentState!.validate();
    // conditions for validating
    if (currentText.length != 6 || currentText != "123456") {
      errorController!.add(ErrorAnimationType
          .shake); // Triggering error shake animation
      hasError = true;
    } else {

          hasError = false;
         print("otp varify");
    }
*/

  }


}