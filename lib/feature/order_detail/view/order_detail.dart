import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:snack_delivery/core/constants/size_config.dart';
import 'package:snack_delivery/core/widgets/appbar/appbar_with_back_arrow.dart';
import 'package:snack_delivery/feature/order_detail/controller/order_detail_controller.dart';
import 'package:snack_delivery/feature/order_detail/view/order_detail_all_widget.dart';
import 'package:snack_delivery/feature/order_main/controller/order_page_controller.dart';

class OrderDetail extends StatelessWidget {


 OrderDetailController orderDetailController  = Get.find<OrderDetailController>();

  @override
  Widget build(BuildContext context) {

    SizeConfig sizeConfig = Get.find<SizeConfig>();
    sizeConfig.init(context);
    return ScreenUtilInit(builder: () => Scaffold(
      appBar: getAppBarWithBackArrow("Order Detail", sizeConfig, ()=> print("hahahha")),
      backgroundColor: Colors.white,
      body: buildOrderDetailBody(context, sizeConfig, orderDetailController)
    ));
  }
}
