import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
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

        return Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(kMarginSmall)),
                child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                          onTap: (){
                            Get.toNamed('/all-item-page',arguments: [mModel.categId.toString(),mModel.categName]);
                          },
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(kMarginSmall),
                                  topRight: Radius.circular(kMarginSmall)),
                              child: CachedNetworkImage(
                                imageUrl: mModel.categImg,
                                placeholder: (context, url) => Image.asset(
                                  'assets/images/place_holder.png',
                                  fit: BoxFit.fill,
                                ),
                                errorWidget: (context, url, error) => Image.asset(
                                  'assets/images/place_holder.png',
                                  fit: BoxFit.fill,
                                ),
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
                                  color: Colors.black,
                                  fontSize: kMediumTitleFontSize,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5.sp,
                            ),
                          ],
                        ),
                      ),),
                );
      }));
}

Widget buildHomePageBodyShimmer(BuildContext context, SizeConfig mSizeConfig) {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.all(kMarginMedium),
    child: Shimmer.fromColors(
      baseColor: (Colors.grey[300])!,
      highlightColor: (Colors.grey[100])!,
      enabled: true,
      child: GridView.builder(
          itemCount: 8,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: (6 / 5),
            crossAxisSpacing: 6,
            mainAxisSpacing: 8,
          ),
          itemBuilder: (context, int index) {
            return Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kMarginSmall)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(kMarginSmall),
                          topRight: Radius.circular(kMarginSmall)),
                      child: Container(
                        width: double.infinity,
                        color: Colors.white,
                        height: mSizeConfig.blockSizeVertical * 13,
                      ),
                    ),
                    SizedBox(
                      height: 5.sp,
                    ),
                    Container(
                      width: mSizeConfig.blockSizeHorizontal * 30,
                      color: Colors.white,
                      height: mSizeConfig.blockSizeVertical * 3,
                    ),
                  ],
                ));
          }),
    ),
  );
}
