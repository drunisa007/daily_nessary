import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:snack_delivery/core/constants/size_config.dart';
import 'package:snack_delivery/core/widgets/appbar/simple_app_bar.dart';
import 'package:snack_delivery/feature/setting_page/controller/setting_page_controller.dart';
import 'package:snack_delivery/feature/setting_page/view/setting_page_all_widget.dart';

class SettingPage extends StatelessWidget {

  SettingPageController settingPageController = Get.find<SettingPageController>();

  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = Get.find<SizeConfig>();
    sizeConfig.init(context);
    return ScreenUtilInit(builder: () => Scaffold(
      backgroundColor: Colors.white,
      appBar: getSimpleAppbar("Profile Page"),
      body: buildSettingPageAllWidget(context, sizeConfig, settingPageController),
    ));
  }
}
