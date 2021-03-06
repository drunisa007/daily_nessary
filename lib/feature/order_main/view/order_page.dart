import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:snack_delivery/core/constants/size_config.dart';
import 'package:snack_delivery/core/widgets/appbar/appbar_with_back_arrow.dart';
import 'package:snack_delivery/core/widgets/appbar/simple_app_bar.dart';
import 'package:snack_delivery/feature/order_main/controller/order_page_controller.dart';
import 'package:snack_delivery/feature/order_main/view/order_page_all_widget.dart';

class OrderPage extends StatelessWidget {
 // const OrderPage({Key? key}) : super(key: key);

  OrderPageController orderPageController = Get.find<OrderPageController>();

  @override
  Widget build(BuildContext context) {

    SizeConfig sizeConfig = Get.find<SizeConfig>();
    sizeConfig.init(context);
    return ScreenUtilInit(builder: () => Scaffold(
      appBar: getSimpleAppbar("Your Orders"),
      backgroundColor: Colors.white,
      body: orderPageAllWidget(context, sizeConfig,orderPageController),
    ));
  }
}
