import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:snack_delivery/core/constants/all_font_sizes.dart';
import 'package:snack_delivery/core/constants/size_config.dart';
import 'package:snack_delivery/core/models/addtocart_model.dart';
import 'package:snack_delivery/core/models/deliveryfee_model.dart';
import 'package:snack_delivery/feature/cart_main/controller/cart_controller.dart';

Widget buildAddToCartListData(
    SizeConfig mSizeConfig, CartController mController) {
  return Obx(() => ListView.builder(
        itemBuilder: (context, index) {
          AddToCartModel mModel = mController.mAddToCartList[index];

          return Container(
            height: mSizeConfig.blockSizeVertical * 11,
            margin: EdgeInsets.only(bottom: kMarginLarge),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(kMarginTiny.sp)),
            child: Row(
              children: [
                /// image
                Expanded(
                    flex: 3,
                    child: Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: kMarginTiny, vertical: kMarginTiny),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(kMarginTiny.sp),
                        child: CachedNetworkImage(
                          imageUrl: mModel.image,
                          placeholder: (context, url) =>
                              CircularProgressIndicator(),
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                          fit: BoxFit.fitHeight,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                      ),
                    )),
                SizedBox(
                  width: 8.sp,
                ),

                /// cart detail
                Expanded(
                    flex: 5,
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: kMarginMedium),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Text(
                              mModel.title,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: kMediumTitleFontSize.sp,
                                  letterSpacing: 1),
                            ),
                          ),
                          Container(
                            child: Text(
                              mModel.quantity,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: kMediumTitleFontSize.sp,
                                  letterSpacing: 1),
                            ),
                          ),
                          Container(
                            child: Text(
                              "${mModel.price} / 1",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: kMediumBodyFontSize.sp,
                                  letterSpacing: 1),
                            ),
                          ),
                          Container(
                            child: Text(
                              "Cost = ${mModel.total}",
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.w800,
                                  fontSize: kMediumBodyFontSize.sp,
                                  letterSpacing: 1),
                            ),
                          )
                        ],
                      ),
                    )),

                /// add and remove button
                Expanded(
                    flex: 3,
                    child: Container(
                        child: Column(
                      children: [
                        Expanded(
                            child: Container(
                                child: Align(
                          alignment: Alignment.topRight,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.delete,
                              size: 18.sp,
                              color: Colors.grey,
                            ),
                          ),
                        ))),
                        Expanded(
                            child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              buildCircleAddOrRemoveButton(
                                  context,
                                  mSizeConfig,
                                  "assets/images/minus.svg",
                                  false,
                                  mModel.count,
                                  () => mController.removeCount(index)),
                              Container(
                                width: mSizeConfig.blockSizeHorizontal * 8,
                                child: Center(
                                  child: Text(
                                    '${mModel.count}',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: kLargeTitleFontSize),
                                  ),
                                ),
                              ),
                              buildCircleAddOrRemoveButton(
                                  context,
                                  mSizeConfig,
                                  "assets/images/add.svg",
                                  true,
                                  mModel.count,
                                  () => mController.addCount(index)),
                              SizedBox(
                                width: 12.sp,
                              )
                            ],
                          ),
                        ))
                      ],
                    )))
              ],
            ),
          );
        },
        itemCount: mController.mAddToCartList.length,
      ));
}

buildCircleAddOrRemoveButton(context, SizeConfig mSizeConfig, String iconUrl,
    bool isAdd, int count, action) {
  return GestureDetector(
    onTap: action,
    child: Container(
        width: mSizeConfig.blockSizeVertical * 2.5,
        height: mSizeConfig.blockSizeVertical * 2.5,
        decoration: BoxDecoration(
            color: isAdd
                ? Theme.of(context).primaryColor
                : count == 1
                    ? Colors.grey
                    : Theme.of(context).primaryColor,
            borderRadius:
                BorderRadius.circular(mSizeConfig.blockSizeVertical * 3 / 2)),
        child: Center(
          child: SvgPicture.asset(
            iconUrl,
            width: isAdd
                ? mSizeConfig.blockSizeVertical * 0.9
                : mSizeConfig.blockSizeVertical * 1.5,
            height: isAdd
                ? mSizeConfig.blockSizeVertical * 0.9
                : mSizeConfig.blockSizeVertical * 1.5,
            color: Colors.white,
          ),
        )),
  );
}

buildPriceRangeForDeliveryFee(SizeConfig mSizeConfig, context, List<DeliveryFeeModel> deliveryFeeList) {
  return Container(
    child: Column(
      children: [
        Container(
          child: Row(
            children: [
              Expanded(
                  flex: 5,
                  child: Container(
                    padding: EdgeInsets.only(left: kMarginMedium),
                    height: mSizeConfig.blockSizeVertical * 3,
                    color: Theme.of(context).primaryColor,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Cost Range',
                        style: TextStyle(
                            color: Colors.white, fontSize: kMediumBodyFontSize),
                      ),
                    ),
                  )),
              SizedBox(
                width: 0.5.sp,
              ),
              Expanded(
                  flex: 3,
                  child: Container(
                    padding: EdgeInsets.only(left: kMarginMedium),
                    height: mSizeConfig.blockSizeVertical * 3,
                    color: Theme.of(context).primaryColor,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Delivery Fees',
                        style: TextStyle(
                            color: Colors.white, fontSize: kMediumBodyFontSize),
                      ),
                    ),
                  ))
            ],
          ),
        ),
        Container(
            color: Theme.of(context).primaryColor.withOpacity(0.7),
            child: ListView.builder(
              itemBuilder: (context, index) {
                DeliveryFeeModel mModel = deliveryFeeList[index];

                return Container(
                  height: mSizeConfig.blockSizeVertical * 2,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 5,
                          child: Container(
                            padding: EdgeInsets.only(left: kMarginMedium),
                            height: mSizeConfig.blockSizeVertical * 2,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                '${mModel.range}',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: kSmallBodyFontSize),
                              ),
                            ),
                          )),
                      SizedBox(
                        width: 0.5.sp,
                      ),
                      Expanded(
                          flex: 3,
                          child: Container(
                            padding: EdgeInsets.only(left: kMarginMedium),
                            height: mSizeConfig.blockSizeVertical * 2,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                '${mModel.price}',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: kSmallBodyFontSize),
                              ),
                            ),
                          ))
                    ],
                  ),
                );
              },
              itemCount: deliveryFeeList.length,
              shrinkWrap: true,
            ))
      ],
    ),
  );
}

buildItemDetailAndTotalCost(
    SizeConfig mSizeConfig, context, CartController mController) {
  return Obx(()=> Container(
    width: double.infinity,
    padding: EdgeInsets.symmetric(
        vertical: kMarginMedium, horizontal: kMarginBig + kMarginBig),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(kMarginMedium)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 5.sp,
        ),
        Container(
          child: Text(
            'Details',
            style:
            TextStyle(color: Colors.black, fontSize: kLargeTitleFontSize),
          ),
        ),
        Container(
          child: Row(
            children: [
              Text(
                'Items Cost',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: kMediumTitleFontSize),
              ),
              Spacer(),
              Text(
                '${mController.itemCost.value} Ks',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: kMediumTitleFontSize),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5.sp,
        ),
        Container(
          child: Row(
            children: [
              Text(
                'Delivery Cost',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: kMediumTitleFontSize),
              ),
              Spacer(),
              Text(
                '${mController.deliveryCost.value} Ks',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: kMediumTitleFontSize),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5.sp,
        ),
        Divider(),
        SizedBox(
          height: 5.sp,
        ),
        Container(
          child: Row(
            children: [
              Text(
                'Total Cost',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: kMediumTitleFontSize),
              ),
              Spacer(),
              Text(
                '${mController.totalCost.value} Ks',
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: kMediumTitleFontSize),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.sp,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: mSizeConfig.blockSizeHorizontal * 25,
            height: mSizeConfig.blockSizeHorizontal * 8,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(
                    mSizeConfig.blockSizeHorizontal * 25 / 2)),
            child: Center(
              child: Text(
                'Purchase',
                style: TextStyle(
                    color: Colors.white, fontSize: kLargeButtonTextFontSize),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 5.sp,
        ),
      ],
    ),
  ));
}
