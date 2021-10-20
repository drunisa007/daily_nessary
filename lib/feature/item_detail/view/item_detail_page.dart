import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:snack_delivery/core/constants/all_font_sizes.dart';
import 'package:snack_delivery/core/constants/size_config.dart';
import 'package:snack_delivery/core/utils/temp_data.dart';
import 'package:snack_delivery/feature/item_detail/controller/item_detail_controller.dart';
import 'package:snack_delivery/feature/item_detail/view/item_detail_page_all_widget.dart';

class ItemDetailPage extends StatelessWidget {
  const ItemDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig mSizeConfig = Get.find<SizeConfig>();
    mSizeConfig.init(context);

    ItemDetailController mController = Get.find<ItemDetailController>();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildBannerItemDetail(context, Get.width, mController, mSizeConfig,
                getTestingImageList()),
            SizedBox(
              height: 10.sp,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: kMarginMedium.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'Fershay Strawberry Swiss Cream Roll',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: KAppBarTitleFontSize),
                    ),
                  ),
                  SizedBox(
                    height: 15.sp,
                  ),
                  Container(
                    child: Text(
                      'Snack / Cake & Pie',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: kMediumTitleFontSize),
                    ),
                  ),
                  SizedBox(
                    height: 10.sp,
                  ),
                  buildSelectablePackageDesign(
                      mSizeConfig, getPackagesList(), mController)
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: buildBottomPriceDetailDesign(mSizeConfig,mController,context),
    );
  }
}
