import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:snack_delivery/core/constants/size_config.dart';
import 'package:snack_delivery/feature/opt_screen/controller/otp_page_controller.dart';
import 'package:snack_delivery/feature/opt_screen/view/build_otp_page_body.dart';

class OtpPage extends StatelessWidget {



  OtpPageController controller = Get.find<OtpPageController>();

  @override
  Widget build(BuildContext context) {


    SizeConfig sizeConfig = Get.find<SizeConfig>();
    sizeConfig.init(context);



    snackBar(String? message) {
      return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message!),
          duration: Duration(seconds: 2),
        ),
      );
    }
    return ScreenUtilInit(
      builder: () => Scaffold(
        backgroundColor: Colors.white,

        body: buildOtpPageBody(context, sizeConfig),
      ),
    );
  }
}
