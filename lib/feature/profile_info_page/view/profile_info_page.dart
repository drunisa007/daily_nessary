import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:snack_delivery/core/constants/size_config.dart';
import 'package:snack_delivery/feature/profile_info_page/view/build_profile_info_page_body.dart';

class ProfileInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = Get.find<SizeConfig>();
    sizeConfig.init(context);
    return ScreenUtilInit(
      builder: () => Scaffold(
          backgroundColor: Colors.white,
          body: buildProfileInfoBuildBody(context, sizeConfig)),
    );
  }
}
