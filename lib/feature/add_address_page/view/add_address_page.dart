import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:snack_delivery/core/constants/size_config.dart';
import 'package:snack_delivery/core/widgets/appbar/appbar_with_back_arrow.dart';
import 'package:snack_delivery/feature/add_address_page/controller/add_address_page_controller.dart';
import 'package:snack_delivery/feature/add_address_page/view/add_address_page_all_widget.dart';

class AddAddressPage extends StatelessWidget {
  AddAddressPageController addAddressPageController =
      Get.find<AddAddressPageController>();

  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = Get.find<SizeConfig>();
    sizeConfig.init(context);

    return ScreenUtilInit(
      builder: () => Scaffold(
        appBar: getAppBarWithBackArrow(
            "Add Your Address", sizeConfig, () => print("haha")),
        body: buildAddAddressPageAllWidget(context, addAddressPageController, sizeConfig)
      )
    );
  }
}
