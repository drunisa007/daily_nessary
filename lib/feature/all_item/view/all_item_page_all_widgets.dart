import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:snack_delivery/core/constants/all_font_sizes.dart';
import 'package:snack_delivery/core/constants/size_config.dart';
import 'package:snack_delivery/core/models/item_model.dart';
import 'package:snack_delivery/feature/all_item/controller/all_item_controller.dart';

Widget buildItems(
    SizeConfig mSizeConfig, AllItemController mAllItemController) {
  return Obx(() => GridView.builder(
      itemCount: mAllItemController.mItemList.length,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: (1 / 1.15),
        crossAxisSpacing: 6,
        mainAxisSpacing: 8,
      ),
      itemBuilder: (context, int index) {
        ItemModel mModel = mAllItemController.mItemList[index];

        return Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(kMarginSmall)),
            child: Material(
              color: Colors.transparent,
                borderRadius: BorderRadius.circular(kMarginSmall),
              child: InkWell(
                onTap: (){
                  Get.toNamed('/item-detail-page',arguments: [mModel.itemId]);
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(kMarginSmall),
                          topRight: Radius.circular(kMarginSmall)),
                      child: CachedNetworkImage(
                        imageUrl: mModel.img,
                        placeholder: (context, url) =>
                            Image.asset('assets/images/place_holder.png',fit: BoxFit.fill,),
                        errorWidget: (context, url, error) =>
                            Image.asset('assets/images/place_holder.png',fit: BoxFit.fill,),
                        fit: BoxFit.fitHeight,
                        width: double.infinity,
                        height: mSizeConfig.blockSizeVertical * 13.5,
                      ),
                    ),
                    SizedBox(
                      height: 5.sp,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: kMarginMedium),
                      child: Text(
                        mModel.itemName,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: kLargeBodyFontSize,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 3.sp,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: kMarginMedium),
                      child: Text(
                        "${mModel.packageName} ${mModel.price} Ks",
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: kMediumBodyFontSize,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ));
      }));
}


Widget buildItemsShimmer(
    SizeConfig mSizeConfig) {
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
            childAspectRatio: (1 / 1.1),
            crossAxisSpacing: 6,
            mainAxisSpacing: 8,
          ),
          itemBuilder: (context, int index) {
            return Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kMarginSmall)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(kMarginSmall),
                          topRight: Radius.circular(kMarginSmall)),
                      child: Container(
                        color: Colors.white,
                        width: double.infinity,
                        height: mSizeConfig.blockSizeVertical * 13.5,
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
                    SizedBox(
                      height: 3.sp,
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