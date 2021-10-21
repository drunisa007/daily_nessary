import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:snack_delivery/core/constants/size_config.dart';
import 'package:snack_delivery/core/widgets/appbar/appbar_with_back_arrow.dart';

import 'about_us_all_page_controller.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    SizeConfig sizeConfig = SizeConfig();
    sizeConfig.init(context);
    return ScreenUtilInit(builder: () => Scaffold(

      appBar: getAppBarWithBackArrow("About Us", sizeConfig, ()=>Get.back()),


      body: builAboutUsAllPageWidget(context,sizeConfig)
    ));
  }
}
