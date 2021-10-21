import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:snack_delivery/core/constants/size_config.dart';
import 'package:snack_delivery/feature/opt_screen/controller/otp_page_controller.dart';
import 'package:snack_delivery/feature/opt_screen/view/otp_all_wigets.dart';

class OtpPage extends StatelessWidget {





  @override
  Widget build(BuildContext context) {


    SizeConfig sizeConfig = Get.find<SizeConfig>();
    sizeConfig.init(context);

    OtpPageController controller = Get.find<OtpPageController>();

    FocusNode inputNode = FocusNode();

    controller.mAllCodeController.addListener(() {
      controller.addSingleNewCode(context,inputNode);
    });





    return ScreenUtilInit(
      builder: () => Scaffold(
        backgroundColor: Colors.white,
        body: buildOtpPageBody(context, sizeConfig,controller,controller.mAllCodeController,inputNode),
      ),
    );


  }


}
