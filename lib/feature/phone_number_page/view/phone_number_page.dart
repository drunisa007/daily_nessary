import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:snack_delivery/core/constants/size_config.dart';
import 'package:snack_delivery/core/utils/default_style.dart';
import 'package:snack_delivery/feature/phone_number_page/controller/phone_number_controller.dart';
import 'package:snack_delivery/feature/phone_number_page/view/build_phone_number_body.dart';

class PhoneNumberPage extends StatelessWidget {
  const PhoneNumberPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = Get.find<SizeConfig>();
    sizeConfig.init(context);

    PhoneNumberController mPhoneController = Get.find<PhoneNumberController>();

    return ScreenUtilInit(
      builder: () =>  Scaffold(
        backgroundColor: colorWhite,
        body: buildPhoneNumberBody(context,sizeConfig,mPhoneController),

      ),
    );
  }
}
