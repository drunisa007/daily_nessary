import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snack_delivery/core/constants/all_font_sizes.dart';
import 'package:snack_delivery/core/constants/size_config.dart';

Widget builAboutUsAllPageWidget(BuildContext context,SizeConfig sizeConfig) {

  return ListView(
    children: [


      buildAboutUsCard(context, sizeConfig)
    ],
  );


}

Widget buildAboutUsCard(BuildContext context,SizeConfig sizeConfig) {

  return Container(


    margin: EdgeInsets.all(8),
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(

      color: Colors.white,
       // border: Border.all(color: Colors.grey),
     /* boxShadow: [

        BoxShadow(
          color: Colors.grey.withOpacity(0.4),
          spreadRadius: 3,
          blurRadius: 3,
          offset: Offset(0,3)

        )
      ]*/
    ),

    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Text("Just For Your Daily",style: TextStyle(color: Colors.black,fontSize: kLargeTitleFontSize.sp,fontWeight: FontWeight.bold),),
        SizedBox(
          height: 16,
        ),
        Text(
          "Although multivitamins may be beneficial for some people, they're unnecessary for most",

          style: TextStyle(color: Colors.black,fontSize: kLargeBodyFontSize.sp),
         ),
        SizedBox(
          height: 16,
        ),
        Text(
          "Although multivitamins may be beneficial for some people, they're unnecessary for most",

          style: TextStyle(color: Colors.black,fontSize: kLargeBodyFontSize.sp),
        ),
        SizedBox(
          height: 24,
        ),
        Text("Address",style: TextStyle(color: Colors.black,fontSize: kLargeTitleFontSize.sp,fontWeight: FontWeight.bold),),
        SizedBox(
          height: 16,
        ),
        Text(
          "80 Street, Corner Of 16 Street, Aungmyaytharzan Township, Mandalay",

          style: TextStyle(color: Colors.black,fontSize: kLargeBodyFontSize.sp),
        ),
        SizedBox(
          height: 16,
        ),

        Text("Phone",style: TextStyle(color: Colors.black,fontSize: kLargeTitleFontSize.sp,fontWeight: FontWeight.bold),),
        SizedBox(
          height: 16,
        ),

        Row(
          children: [
            Icon(Icons.contact_phone_outlined,color: Colors.black,),
            SizedBox(
              width: 16,
            ),
            Text("P0940404404",style: TextStyle(color: Colors.black,fontSize: kLargeTitleFontSize.sp,fontWeight: FontWeight.bold),),

          ],
        ),
        SizedBox(
          height: 8,
        ),

        Row(
          children: [
            Icon(Icons.contact_phone_outlined,color: Colors.black,),
            SizedBox(
              width: 16,
            ),
            Text("0995847878373",style: TextStyle(color: Colors.black,fontSize: kLargeTitleFontSize.sp,fontWeight: FontWeight.bold),),

          ],
        ),
        SizedBox(
          height: 16,
        ),


      ],
    ),
  );
}

