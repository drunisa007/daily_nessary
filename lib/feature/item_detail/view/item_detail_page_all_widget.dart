import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:snack_delivery/core/constants/all_font_sizes.dart';
import 'package:snack_delivery/core/constants/size_config.dart';
import 'package:snack_delivery/core/models/package_model.dart';
import 'package:snack_delivery/feature/item_detail/controller/item_detail_controller.dart';

Widget buildBannerItemDetail(
    context,
    width,
    ItemDetailController itemDetailController,
    SizeConfig sizeConfig,
    List<String> mListImage) {
  List<int> mListNumber = [];

  for (int i = 1; i <= mListImage.length; i++) {
    mListNumber.add(i);
  }

  CarouselController buttonCarouselController = CarouselController();

  return Container(
    child: GetBuilder<ItemDetailController>(
      init: itemDetailController,
      builder: (_) => Stack(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
            child: CarouselSlider(
              options: CarouselOptions(
                height: sizeConfig.safeBlockVertical * 30,
                initialPage: 0,
                aspectRatio: 16 / 9,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  itemDetailController.changeCurrentIndex(index);
                },
                scrollDirection: Axis.horizontal,
                reverse: false,
                enableInfiniteScroll: true,
              ),
              carouselController: buttonCarouselController,
              items: mListNumber.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: width,
                      child: CachedNetworkImage(
                        imageUrl: mListImage[i - 1],
                        placeholder: (context, url) => Image.asset(
                          "assets/images/place_holder.png",
                          fit: BoxFit.fill,
                        ),
                        errorWidget: (context, url, error) => Image.asset(
                          "assets/images/place_holder.png",
                          fit: BoxFit.fill,
                        ),
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.only(top: 30.sp, left: 10.sp),
              child: Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  color: Colors.grey.withOpacity(0.5),
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Get.back();
                  },
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: DotsIndicator(
                  dotsCount: mListImage.length,
                  position: _.currentIndexBanner.toDouble(),
                  decorator: DotsDecorator(
                    color: Colors.white, // Inactive color
                    activeColor: Theme.of(context).colorScheme.secondary,
                    size: const Size.square(9.0),
                    activeSize: const Size(18.0, 9.0),
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget buildSelectablePackageDesign(SizeConfig mSizeConfig,
    List<PackageModel> packagesList, ItemDetailController mController) {
  return Card(
    elevation: 1.5,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kMarginMedium.sp)),
    child: ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        PackageModel mModel = packagesList[index];
        return Obx(() => Container(
              height: mSizeConfig.blockSizeVertical * 4.5,
              margin: EdgeInsets.only(
                  left: kMarginSmall,
                  right: kMarginSmall,
                  top: index == 0 ? kMarginLarge : kMarginSmall,
                  bottom: index == packagesList.length - 1
                      ? kMarginLarge
                      : kMarginSmall),
              padding: EdgeInsets.only(left: kMarginMedium),
              decoration: BoxDecoration(
                  color: mController.groupValue.value == index + 1
                      ? Theme.of(context).primaryColor
                      : Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(kMarginMedium.sp)),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      child: Text(
                        "${mModel.packageName}",
                        style: TextStyle(
                            color: mController.groupValue.value == index + 1
                                ? Colors.white
                                : Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: kMediumTitleFontSize.sp),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Text(
                        "Save ${mModel.save} Ks",
                        style: TextStyle(
                            color: mController.groupValue.value == index + 1
                                ? Colors.white
                                : Colors.black,
                            fontSize: kSmallTitleFontSize.sp),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: mSizeConfig.blockSizeVertical * 3.5,
                      padding:
                          EdgeInsets.symmetric(horizontal: 1, vertical: 0.1),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Theme.of(context).primaryColor, width: 1),
                          borderRadius: BorderRadius.circular(kMarginBig)),
                      child: Center(
                        child: Text(
                          "${mModel.price} Ks",
                          style: TextStyle(
                              color: mController.groupValue.value == index + 1
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: kMediumTitleFontSize.sp),
                        ),
                      ),
                    ),
                  ),
                  Radio(
                    onChanged: (int? values) {
                      mController.changeRadioValue(values!);
                    },
                    value: index + 1,
                    groupValue: mController.groupValue.value,
                    activeColor: Colors.white,
                  )
                ],
              ),
            ));
      },
      itemCount: packagesList.length,
      shrinkWrap: true,
    ),
  );
}

Widget buildBottomPriceDetailDesign(
    SizeConfig mSizeConfig, ItemDetailController mController, context) {
  return Obx(() => Container(
        height: kBottomNavigationBarHeight,
        width: mSizeConfig.screenHeight,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: double.infinity,
                color: Colors.green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 4.sp,
                    ),
                    Container(
                      child: Text(
                        '${mController.totalPrice} Ks',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: kLargeBodyFontSize),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            'ခြင်းတောင်း',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: kLargeTitleFontSize),
                          ),
                        ),
                        SvgPicture.asset(
                          'assets/images/cart.svg',
                          width: mSizeConfig.blockSizeVertical * 3,
                          height: mSizeConfig.blockSizeVertical * 3,
                          color: Colors.white,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 1.5,
              color: Colors.white,
            ),
            Expanded(
              flex: 1,
              child: mController.groupValue.value == -1
                  ? Container(
                      height: double.infinity,
                      color: Colors.grey,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Text(
                              'Choose Package',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: kLargeTitleFontSize),
                            ),
                          ),
                          SvgPicture.asset(
                            'assets/images/choice.svg',
                            width: mSizeConfig.blockSizeVertical * 4,
                            height: mSizeConfig.blockSizeVertical * 4,
                            color: Colors.white,
                          )
                        ],
                      ))
                  : GestureDetector(
                      onTap: () {
                        mController.changeTotalPrice();
                      },
                      child: Container(
                        height: double.infinity,
                        color: Theme.of(context).primaryColor,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 4.sp,
                            ),
                            Container(
                              child: Text(
                                '${mController.tempPrice.value} Ks',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: kLargeBodyFontSize),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  child: Text(
                                    'ဝယ်ယူမည်',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: kLargeTitleFontSize),
                                  ),
                                ),
                                SizedBox(
                                  width: 5.sp,
                                ),
                                SvgPicture.asset(
                                  'assets/images/addtocart.svg',
                                  width: mSizeConfig.blockSizeVertical * 3,
                                  height: mSizeConfig.blockSizeVertical * 3,
                                  color: Colors.white,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
            )
          ],
        ),
      ));
}
