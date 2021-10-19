import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:snack_delivery/core/constants/all_font_sizes.dart';
import 'package:snack_delivery/core/constants/size_config.dart';
import 'package:snack_delivery/core/models/category_model.dart';
import 'package:snack_delivery/feature/home_main/controller/home_controller.dart';

Widget buildHomePageBody(BuildContext context, SizeConfig mSizeConfig,
    HomeController mHomeController) {
  return Obx(() => GridView.builder(
      itemCount: mHomeController.mCategoryList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: (6 / 5),
        crossAxisSpacing: 6,
        mainAxisSpacing: 8,
      ),
      itemBuilder: (context, int index) {
        CategoryModel mModel = mHomeController.mCategoryList[index];

        return GestureDetector(
          onTap: (){
            Get.toNamed('/all-item-page',arguments: [mModel.categId.toString()]);
          },
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(kMarginSmall)),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(kMarginSmall),
                        topRight: Radius.circular(kMarginSmall)),
                    child: CachedNetworkImage(
                      imageUrl: mModel.categImg,
                      placeholder: (context, url) => CircularProgressIndicator(),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                      fit: BoxFit.fitHeight,
                      width: double.infinity,
                      height: mSizeConfig.blockSizeVertical * 15,
                    ),
                  ),
                  SizedBox(
                    height: 5.sp,
                  ),
                  Text(
                    mModel.categName,
                    style: TextStyle(
                        color: Colors.black, fontSize: kMediumTitleFontSize,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5.sp,
                  ),
                ],
              )),
        );
      }));
}
