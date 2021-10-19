import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:snack_delivery/core/utils/main_pages.dart';
import 'package:snack_delivery/core/widgets/appbar/simple_app_bar.dart';
import 'package:snack_delivery/feature/feature_main/controller/feature_controller.dart';
import 'package:snack_delivery/feature/feature_main/view/feature_all_page.dart';

class FeaturePage extends StatelessWidget {
  const FeaturePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FeatureController mFeatureController = Get.find<FeatureController>();

    return ScreenUtilInit(
        builder: () => Obx(()=> Scaffold(
          body: MainPages().getPages(mFeatureController.getIndex()),
          bottomNavigationBar:
          getBottomNavBarForFeature(mFeatureController, context),
        )));
  }
}
