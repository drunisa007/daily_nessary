import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snack_delivery/core/constants/all_font_sizes.dart';
import 'package:snack_delivery/core/constants/size_config.dart';
import 'package:snack_delivery/core/widgets/appbar/appbar_with_back_arrow.dart';
import 'package:snack_delivery/core/widgets/appbar/simple_app_bar.dart';
import 'package:snack_delivery/feature/all_item/controller/all_item_controller.dart';
import 'package:snack_delivery/feature/all_item/view/all_item_page_all_widgets.dart';

class AllItemPage extends StatelessWidget {
  const AllItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    SizeConfig mSizeConfig = Get.find<SizeConfig>();
    mSizeConfig.init(context);

    String categoryId = Get.arguments[0];

    AllItemController mAllItemController = Get.find<AllItemController>();

    mAllItemController.fetchItem(categoryId);

    return Scaffold(
      appBar: getAppBarWithBackArrow(categoryId,mSizeConfig,()=> Get.back()),
      body: Container(
          margin: EdgeInsets.only(
              top: kMarginLarge,
              left: kMarginMedium,
              right: kMarginMedium,
              bottom: kMarginMedium),
          child: buildItems(mSizeConfig,mAllItemController)),
    );
  }
}
