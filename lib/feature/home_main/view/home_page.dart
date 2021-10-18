
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snack_delivery/core/constants/size_config.dart';
import 'package:snack_delivery/core/utils/default_style.dart';
import 'package:snack_delivery/feature/home_main/view/_build_home_page_body.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final sizeConfig = Get.find<SizeConfig>();
    sizeConfig.init(context);
    return Scaffold(
      backgroundColor: colorWhite,


      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: buildHomePageBody(context,sizeConfig),
      ),
    );
  }
}
