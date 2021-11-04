import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:snack_delivery/core/constants/size_config.dart';
import 'package:snack_delivery/core/widgets/appbar/appbar_with_back_arrow.dart';
import 'package:snack_delivery/feature/my_address_page/controller/my_address_page_controller.dart';
import 'package:snack_delivery/feature/my_address_page/view/my_address_page_all_widget.dart';

class MyAddressPage extends StatelessWidget {

 final SizeConfig sizeConfig = Get.find<SizeConfig>();

 final MyAddressPageController myAddressPageController = Get.find<MyAddressPageController>();


  @override
  Widget build(BuildContext context) {


    sizeConfig.init(context);
    return ScreenUtilInit(builder: () => Scaffold(
      appBar: getAppBarWithBackArrow("My Address", sizeConfig, ()=> Get.back()),

      body: buildMyAddressPageAllWidget(context, myAddressPageController, sizeConfig),
    ));
  }
}
