
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snack_delivery/core/constants/all_font_sizes.dart';
import 'package:snack_delivery/core/constants/size_config.dart';
import 'package:snack_delivery/feature/order_detail/controller/order_detail_controller.dart';

Widget buildOrderDetailBody(BuildContext context,SizeConfig sizeConfig,OrderDetailController orderDetailController) {

  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: ListView(
      children: [
        getOrderCodeInfo(context, sizeConfig, orderDetailController),
        SizedBox(
          height: 16,
        ),
        getOrderAddress(context, sizeConfig, orderDetailController)

      ],
    ),
  );


}

Widget getOrderCodeInfo(BuildContext context,SizeConfig sizeConfig,OrderDetailController orderDetailController)
{

  return Container(

  padding: EdgeInsets.all(8),
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
      children: [

        Text(orderDetailController.orderModelListForDetail[0].orderId,style: TextStyle(color: Colors.black,fontSize: kLargeButtonTextFontSize.sp,fontWeight: FontWeight.bold),),
        Row(

          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(orderDetailController.orderModelListForDetail[0].orderDuationTime,style: TextStyle(color: Theme.of(context).primaryColor,fontSize: kMediumBodyFontSize.sp,)),
          ],
        ),

        SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Date",style: TextStyle(color: Colors.black,fontSize: kLargeBodyFontSize.sp,fontWeight: FontWeight.w500),),
            Text(orderDetailController.orderModelListForDetail[0].orderDate,style: TextStyle(color: Colors.black,fontSize: kLargeBodyFontSize.sp,fontWeight:FontWeight.w500)),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Time",style: TextStyle(color: Colors.black,fontSize: kLargeBodyFontSize.sp,fontWeight: FontWeight.w500),),
            Text(orderDetailController.orderModelListForDetail[0].orderTime,style: TextStyle(color: Colors.black,fontSize: kLargeBodyFontSize.sp,fontWeight: FontWeight.w500)),
          ],
        ),


      ],
    ),


  );


}


Widget getOrderAddress(BuildContext context,SizeConfig sizeConfig,OrderDetailController orderDetailController){

  return Container(

    padding: EdgeInsets.all(8),
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
      children: [
        SizedBox(
          height: 8,
        ),



        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Town",style: TextStyle(color: Colors.black,fontSize: kLargeBodyFontSize.sp,fontWeight: FontWeight.w500),),
            Text(orderDetailController.orderModelListForDetail[0].orderTown,style: TextStyle(color: Colors.black,fontSize: kLargeBodyFontSize.sp,fontWeight:FontWeight.w500)),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Address",style: TextStyle(color: Colors.black,fontSize: kLargeBodyFontSize.sp,fontWeight: FontWeight.w500),),
            Text(orderDetailController.orderModelListForDetail[0].orderAddress,style: TextStyle(color: Colors.black,fontSize: kLargeBodyFontSize.sp,fontWeight: FontWeight.w500)),
          ],
        ),
        SizedBox(
          height: 8,
        ),

      ],
    ),


  );

}