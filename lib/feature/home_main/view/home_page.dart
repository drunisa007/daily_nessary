import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snack_delivery/core/constants/all_font_sizes.dart';
import 'package:snack_delivery/core/constants/size_config.dart';
import 'package:snack_delivery/core/widgets/appbar/simple_app_bar.dart';
import 'package:snack_delivery/feature/home_main/controller/home_controller.dart';
import 'package:snack_delivery/feature/home_main/view/home_page_all_widgets.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeConfig = Get.find<SizeConfig>();
    sizeConfig.init(context);

    HomeController mHomeController = Get.find<HomeController>();

    return Scaffold(
      appBar: getSimpleAppbar('Home'),
      body: Container(
        margin: EdgeInsets.only(
            top: kMarginLarge,
            left: kMarginMedium,
            right: kMarginMedium,
            bottom: kMarginMedium),
        child: buildHomePageBody(context, sizeConfig, mHomeController),
      ),
    );
  }
}
