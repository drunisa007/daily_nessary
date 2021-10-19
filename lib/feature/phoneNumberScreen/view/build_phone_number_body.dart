import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snack_delivery/core/constants/all_font_sizes.dart';
import 'package:snack_delivery/core/constants/size_config.dart';

Widget buildPhoneNumberBody(BuildContext context,SizeConfig sizeConfig) {
  return Padding(
    padding: const EdgeInsets.all(kMarginBig),
    child:getPhoneNumber(context, sizeConfig),
  );
}

Widget getPhoneNumber(BuildContext context,SizeConfig sizeConfig) {

  return ListView(
 /*   mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,*/
    children: [

      SizedBox(
        height: sizeConfig.blockSizeVertical*5,
      ),
      Center(

          child: Image.asset(
            "assets/images/cover.png",
            height: sizeConfig.blockSizeVertical*40,

            fit: BoxFit.fitHeight,
          )),
      SizedBox(
        height: 32,
      ),
      Text(
        "Hello Welcome!!",
        style: TextStyle(
            color: Colors.grey,fontSize: kSmallTitleFontSize.sp ),
      ),
      SizedBox(
        height:8,
      ),
      Text(
        "Varify Your Phone Number",
        style: TextStyle(
          color: Colors.black, fontSize: kLargeTitleFontSize.sp, fontWeight: FontWeight.bold,),
      ),
      SizedBox(
        height: 24,
      ),
      Container(
        child: Theme(
          data:Theme.of(context).copyWith(
            colorScheme: ThemeData().colorScheme.copyWith(
              primary : Colors.black,
            ),
          ),
          child: TextField(

            style: TextStyle(color : Colors.black,fontSize: kLargeTitleFontSize.sp,fontWeight: FontWeight.w600),
            decoration: InputDecoration(
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.phone),
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: Colors.white, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),


                ),
                hintText: "09********"




            ),
          ),
        ),
        decoration: BoxDecoration(

          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 5,
              offset: const Offset(0, 5),
            ),

          ],
        ),

      ),
      SizedBox(
        height:42,
      ),
      Center(
        child: ElevatedButton(

            style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50), //
                primary: Colors.red// double.infinity is the width and 30 is the height
            ),
            child: Text("Send OTP Code", style: TextStyle(color: Colors.white, fontSize: kLargeTitleFontSize.sp, fontWeight: FontWeight.bold),),

            onPressed: () {}),
      ),


      SizedBox(
        height:42,
      ),

      RichText(
          textAlign: TextAlign.center,
          text: TextSpan(

        children: [

          TextSpan(text :   "By Creating an account, you aggree to our ",style: TextStyle(color: Colors.grey,fontSize: kSmallTitleFontSize.sp,),),
          TextSpan(text :   "Terms of Servies and Privacy Policy",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: kMediumTitleFontSize.sp)),

        ]
      )

      )

    ],
  );
}







