import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snack_delivery/core/constants/size_config.dart';
import 'package:snack_delivery/core/utils/temp_data.dart';
import 'package:snack_delivery/feature/item_detail/view/item_detail_page_all_widget.dart';
class ItemDetailPage extends StatelessWidget {
  const ItemDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    SizeConfig mSizeConfig = Get.find<SizeConfig>();
    mSizeConfig.init(context);

    return Scaffold(
      body: Column(
        children: [
             buildForMultipleItemImage(mSizeConfig,getTestingImageList())
        ],
      ),
    );
  }
}
