import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snack_delivery/core/constants/all_font_sizes.dart';
import 'package:snack_delivery/core/constants/size_config.dart';
import 'package:snack_delivery/core/models/type_model.dart';
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
    String categoryName = Get.arguments[1];

    AllItemController mAllItemController = Get.find<AllItemController>();

    //mAllItemController.fetchItem(categoryId);
    mAllItemController.fetchType(categoryId);

    return Scaffold(
      appBar:
          getAppBarWithBackArrow(categoryName, mSizeConfig, () => Get.back()),
      body: Container(
          margin: EdgeInsets.only(
              top: kMarginLarge,
              left: kMarginMedium,
              right: kMarginMedium,
              bottom: kMarginMedium),
          child:Obx(()=>  Column(
            children: [
              if (mAllItemController.showLoadingType.isTrue) Container() else Container(
                width: double.infinity,
                padding: EdgeInsets.only(top: 10,left: 4,right: 4,bottom: 4),
                child: GridView.builder(
                    gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 0.4 / 0.47,
                        crossAxisCount: 5,
                        crossAxisSpacing: 0,
                        mainAxisSpacing: 0),
                    itemCount: mAllItemController.mTypeList.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {

                      TypeModel mModel = mAllItemController.mTypeList[index];

                      return Container(
                        margin: EdgeInsets.zero,
                        child: Column(
                          children: [
                            Container(
                              width:  mSizeConfig.blockSizeVertical * 6.5,
                              height: mSizeConfig.blockSizeVertical * 6.5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(mSizeConfig.blockSizeVertical * 6.5/2),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                    offset: Offset(0, 2),
                                  )
                                ]
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(mSizeConfig.blockSizeVertical * 6.5/2),
                                child: CachedNetworkImage(
                                  imageUrl: mModel.typeImg,
                                  placeholder: (context, url) =>
                                      Image.asset('assets/images/place_holder.png',fit: BoxFit.fill,),
                                  errorWidget: (context, url, error) =>
                                      Image.asset('assets/images/place_holder.png',fit: BoxFit.fill,),
                                  fit: BoxFit.fill,
                                  width:  mSizeConfig.blockSizeVertical * 6.5,
                                  height: mSizeConfig.blockSizeVertical * 6.5,
                                ),
                              ),
                            ),
                            Container(
                              width:mSizeConfig.blockSizeHorizontal*15,
                              margin: EdgeInsets.only(top: 6),
                              child: Center(
                                child: Text(mModel.typeName,style: TextStyle(
                                  fontSize: kSmallTitleFontSize,
                                  color: Colors.black,
                            ),maxLines: 2,textAlign: TextAlign.center,),
                              ),)
                          ],
                        ),
                      );
                    }),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
              )

              /*      Obx(()=> mAllItemController.showLoading.isTrue
                  ? buildItemsShimmer(mSizeConfig)
                  : buildItems(mSizeConfig, mAllItemController))*/
            ],
          ))),
    );
  }
}
