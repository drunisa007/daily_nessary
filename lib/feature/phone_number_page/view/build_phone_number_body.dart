import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:snack_delivery/core/constants/all_font_sizes.dart';
import 'package:snack_delivery/core/constants/size_config.dart';
import 'package:snack_delivery/feature/phone_number_page/controller/phone_number_controller.dart';

Widget buildPhoneNumberBody(BuildContext context,SizeConfig sizeConfig, PhoneNumberController mPhoneController) {
  return Padding(
    padding: const EdgeInsets.all(kMarginBig),
    child:getPhoneNumber(context, sizeConfig,mPhoneController),
  );
}

Widget getPhoneNumber(BuildContext context,SizeConfig sizeConfig, PhoneNumberController mPhoneController) {

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
            color: Colors.grey,fontSize: kLargeBodyFontSize.sp ),
      ),
      SizedBox(
        height:8,
      ),
      Text(
        "Verify Your Phone Number",
        style: TextStyle(
          color: Colors.black, fontSize: kLargeTitleFontSize.sp, fontWeight: FontWeight.bold,),
      ),
      SizedBox(
        height: 24,
      ),
      Card(
        elevation: 8,
        shadowColor: Colors.grey.withOpacity(0.4),
        child: Theme(

          data:Theme.of(context).copyWith(
            colorScheme: ThemeData().colorScheme.copyWith(
              primary : Colors.black,
            ),
          ),
          child: TextField(
            keyboardType: TextInputType.number,

            style: TextStyle(color : Colors.black,fontSize: kLargeTitleFontSize.sp,fontWeight: FontWeight.w600),
            decoration: InputDecoration(
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.phone),
                counterText: "",
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
                hintText: "Phone Number",
              hintStyle:  TextStyle(color : Colors.grey.withOpacity(0.8),fontSize: kMediumBodyFontSize.sp),




            ),
            maxLength: 11,
          ),
        ),
        /*decoration: BoxDecoration(

          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 5,
              offset: const Offset(0, 5),
            ),

          ],
        ),*/

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
            child: Text("Send OTP Code", style: TextStyle(color: Colors.white, fontSize: kLargeButtonTextFontSize.sp, fontWeight: FontWeight.bold),),

            onPressed: () {

              // Get.toNamed('/otp_page');
            }),
      ),


      SizedBox(
        height:42,
      ),

      RichText(
          textAlign: TextAlign.center,
          text: TextSpan(

        children: [

          TextSpan(text :   "By Creating an account, you aggree to our ",style: TextStyle(color: Colors.grey,fontSize: kSmallTitleFontSize.sp,),),
          TextSpan(text :   "Terms of Servies and Privacy Policy",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w500,fontSize: kMediumTitleFontSize.sp, decoration: TextDecoration.underline,)),

        ]
      )

      )

    ],
  );
}







