import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:snack_delivery/core/constants/size_config.dart';
import 'package:snack_delivery/feature/account_main/controller/account_page_controller.dart';

import 'account_page_all_widget.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AccountPageController accountPageController = Get.find<AccountPageController>();

    SizeConfig sizeConfig = Get.find<SizeConfig>();
    sizeConfig.init(context);
    return ScreenUtilInit(builder: () => Scaffold(
      backgroundColor: Colors.white,
      body: buildAccountPageAllWidget(context, sizeConfig, accountPageController),
    ));
  }
}
