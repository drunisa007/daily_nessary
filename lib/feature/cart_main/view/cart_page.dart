import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:snack_delivery/core/constants/all_font_sizes.dart';
import 'package:snack_delivery/core/constants/size_config.dart';
import 'package:snack_delivery/core/models/addtocart_model.dart';
import 'package:snack_delivery/core/utils/temp_data.dart';
import 'package:snack_delivery/core/widgets/appbar/appbar_with_back_arrow.dart';
import 'package:snack_delivery/feature/cart_main/controller/cart_controller.dart';
import 'package:snack_delivery/feature/cart_main/view/cart_all_widgets.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig mSizeConfig = Get.find<SizeConfig>();

    mSizeConfig.init(context);

    CartController mCartController = Get.find<CartController>();

    return Scaffold(
        appBar:
            getAppBarWithBackArrow('Cart', mSizeConfig, actonForBackArrow()),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: kMarginMedium),
          child: Column(
            children: [
              Flexible(
                  flex: 10,
                  child: Container(
                    padding: EdgeInsets.only(top: kMarginLarge),
                    child: buildAddToCartListData(mSizeConfig, mCartController),
                  )),
              SizedBox(height: 8.sp,),
              Flexible(
                  flex: 7,
                  child: Container(
                    child: Column(
                      children: [
                        buildPriceRangeForDeliveryFee(mSizeConfig, context,getDeliveryFeeList()),
                        SizedBox(
                          height: 10.sp,
                        ),
                        buildItemDetailAndTotalCost(mSizeConfig,context,mCartController)
                      ],
                    ),
                  ))
            ],
          ),
        ));
  }
}

actonForBackArrow() {
  print('back arrow is clicked');
}
