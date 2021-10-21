import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:snack_delivery/core/constants/all_font_sizes.dart';
import 'package:snack_delivery/core/constants/size_config.dart';
import 'package:snack_delivery/feature/opt_screen/controller/otp_page_controller.dart';

Widget buildOtpPageBody(BuildContext context, SizeConfig sizeConfig,
    OtpPageController controller, TextEditingController mAllCodeController, FocusNode inputNode) {
  return Padding(
      padding: EdgeInsets.all(8),
      child: getOptAction(context, sizeConfig, controller, mAllCodeController,inputNode));
}

getOptAction(BuildContext context, SizeConfig sizeConfig,
    OtpPageController controller, TextEditingController mAllCodeController, FocusNode inputNode) {
  return ListView(
    //crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      SizedBox(height: 30),
      Center(
        child: Container(
          height: sizeConfig.blockSizeVertical * 30,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset("assets/images/cover.png"),
          ),
        ),
      ),
      SizedBox(height: sizeConfig.blockSizeVertical * 5),
      Text("We will sent you 6 digit number via sms",
          style:
              TextStyle(color: Colors.black, fontSize: kLargeBodyFontSize.sp)),
      SizedBox(
        height: 8,
      ),
      Text(
        'Enter Your OPT Code Below',
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: kLargeBodyFontSize.sp),
      ),

      SizedBox(
        height: sizeConfig.blockSizeVertical * 7,
      ),
      buildOptTextFormDesign(sizeConfig, controller, mAllCodeController,inputNode,context),
      SizedBox(
        height: sizeConfig.blockSizeVertical * 7,
      ),
      ElevatedButton(
          style: ElevatedButton.styleFrom(
              minimumSize: Size(double.infinity, 50), //
              primary: Colors
                  .red // double.infinity is the width and 30 is the height
              ),
          child: Text(
            "Verify Code",
            style: TextStyle(
                color: Colors.white,
                fontSize: kLargeButtonTextFontSize.sp,
                fontWeight: FontWeight.bold),
          ),
          onPressed: () {
            if(controller.codePosition.value==5){
             Get.offAllNamed("/");
            }
          }),
      //Spacer(),
      SizedBox(
        height: sizeConfig.blockSizeVertical * 5,
      ),
      Center(
        child: Text("Resent Otp in 6 s ",
            style:
                TextStyle(color: Colors.grey, fontSize: kLargeBodyFontSize.sp)),
      )
    ],
  );
}

snackBar(String? message, BuildContext context) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message!),
      duration: Duration(seconds: 2),
    ),
  );
}

Widget buildOptTextFormDesign(SizeConfig mSizeConfig,
    OtpPageController controller, TextEditingController mAllCodeController, FocusNode inputNode, BuildContext context) {
  return Container(
      height: mSizeConfig.blockSizeVertical * 4,
      width: double.infinity,
      child: Align(
        alignment: Alignment.center,
        child: Stack(
          children: [
           Obx(()=>  ListView.builder(
             padding: EdgeInsets.zero,
             shrinkWrap: true,
             scrollDirection: Axis.horizontal,
             itemBuilder: (context, index) {
               return GestureDetector(
                 onTap: (){
                   print('working');
                   FocusScope.of(context).requestFocus(inputNode);
                 },
                 child: Container(
                   height: mSizeConfig.blockSizeVertical * 4,
                   width: mSizeConfig.blockSizeVertical * 4,
                   margin: EdgeInsets.symmetric(horizontal: kMarginMedium),
                   decoration: BoxDecoration(
                       border: Border.all(color: Colors.grey),
                       borderRadius: BorderRadius.circular(kMarginSmall)),
                   child: Center(
                     child: Text(
                       "${controller.mOptCodeList[index]}",
                       style: TextStyle(
                           color: Colors.black,
                           fontWeight: FontWeight.bold,
                           fontSize: 20),
                     ),
                   ),
                 ),
               );
             },
             itemCount: controller.mOptCodeList.length,
           ),),
            Container(
              width: 0,
              height: 0,
              child: TextField(
                keyboardType: TextInputType.number,
                autofocus: true,
                focusNode: inputNode,
                controller: mAllCodeController,
              ),
            )
          ],
        ),
      ));
}





