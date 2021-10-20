
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:snack_delivery/core/constants/all_font_sizes.dart';
import 'package:snack_delivery/core/constants/size_config.dart';
import 'package:snack_delivery/feature/order_main/controller/order_page_controller.dart';

Widget orderPageAllWidget(BuildContext context,SizeConfig sizeConfig,OrderPageController orderPageController) {

  return ListView.builder(
      itemCount: orderPageController.orderModelList.length,
      itemBuilder:(context, int index) {

        return InkWell(
          onTap: () => Get.toNamed('/order-detail-page'),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [

            orderPageController.orderModelList[index].isOrderFinish ?
                buildOrderFinishBody(context, sizeConfig, orderPageController.orderModelList[index].orderId,  "orderStatus",orderPageController.orderModelList[index].orderTime,orderPageController.orderModelList[index].isOrderFinish) :
            buildOrderMakingBody(context, sizeConfig, orderPageController.orderModelList[index].orderId, "orderStatus", orderPageController.orderModelList[index].orderTime,orderPageController.orderModelList[index].isOrderFinish),

            ],
            ),
          ),
        );


        });

}

Widget buildOrderFinishBody(BuildContext context,SizeConfig sizeConfig,String orderId,String orderStatus,String orderDuration,bool isFinish) {

  return Container(

    padding: EdgeInsets.all(kMarginLarge),

    decoration: BoxDecoration(

      color: Colors.white,
        border: Border.all(color: Colors.grey.withOpacity(0.3)),
      boxShadow: <BoxShadow>[

        BoxShadow(
          color: Colors.grey.withOpacity(0.1),
          spreadRadius: 3,
          blurRadius: 3,
          offset: Offset(0, 0), // changes position of shadow
        ),

      ],
      borderRadius: BorderRadius.circular(8.0),),


    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Expanded(
                flex: 2,
                child: SizedBox()),
            Flexible(
              flex: 6,
                child: Center(
                    child: Text(orderId,style: TextStyle(color: Colors.black,fontSize: kLargeButtonTextFontSize.sp,fontWeight: FontWeight.bold),)
                )
            ),
            Expanded(
                flex: 2,

                child: Text(orderDuration,style: TextStyle(color: Colors.black,fontSize: kMediumBodyFontSize.sp,),)),
          ],
        ),

        Container(

          margin: EdgeInsets.symmetric(vertical: 8),
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(

            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(color: Colors.grey)
          ),

          child:   Text("Finishing Order",style: TextStyle(color: Colors.black,fontSize: kLargeButtonTextFontSize.sp,),)
        ),
        Text("Thank you for Shopping with Us...",style: TextStyle(color: Colors.grey,fontSize: kMediumBodyFontSize.sp,),)


      ],
    ),

  );
}


Widget buildOrderMakingBody(BuildContext context,SizeConfig sizeConfig,String orderId,String orderStatus,String orderDuration,bool isFinish) {

  return Container(

    padding: EdgeInsets.all(kMarginLarge),

    decoration: BoxDecoration(

      color: Colors.white,
      border: Border.all(color: Theme.of(context).primaryColor),
      boxShadow: <BoxShadow>[

        BoxShadow(
          color: Colors.grey.withOpacity(0.1),
          spreadRadius: 3,
          blurRadius: 3,
          offset: Offset(0, 0), // changes position of shadow
        ),

      ],
      borderRadius: BorderRadius.circular(8.0),),


    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Expanded(
                flex: 2,
                child: SizedBox()),
            Flexible(
                flex: 6,
                child: Center(child: Text(orderId,style: TextStyle(color: Colors.black,fontSize: kLargeButtonTextFontSize.sp,fontWeight: FontWeight.bold),))),
            Expanded(
                flex: 2,

                child: Text(orderDuration,style: TextStyle(color: Colors.black,fontSize: kMediumBodyFontSize.sp,),)),
          ],
        ),

        Container(

            margin: EdgeInsets.symmetric(vertical: 8),
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(color:Theme.of(context).primaryColor)
            ),

            child:   Text("Making Order",style: TextStyle(color: Colors.black,fontSize: kLargeButtonTextFontSize.sp,),)
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            SizedBox(),
            Text("Packing",style: TextStyle(color: Colors.black,fontSize: kMediumBodyFontSize.sp,),),
            Text("Deliverying",style: TextStyle(color: Colors.black,fontSize: kMediumBodyFontSize.sp,),),
            SizedBox(),
          ],
        ),

        SizedBox(
          height: 8,
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Icon(Icons.home_work_rounded,color: Colors.black,size: 18.sp,),
              Icon(Icons.arrow_forward,color: Colors.black,size: 18.sp),
              Icon(Icons.timer,color: Colors.black,size: 18.sp),
              Icon(Icons.arrow_forward,color: Colors.black,size: 18.sp),
              Icon(Icons.person_rounded,color: Colors.black,size: 18.sp)

            ],
          ),
        ),
        Text("We will delivery your product as soon as possible...",style: TextStyle(color: Colors.grey,fontSize: kMediumBodyFontSize.sp,),)



      ],
    ),

  );
}