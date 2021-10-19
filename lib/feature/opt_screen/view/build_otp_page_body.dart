import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:snack_delivery/core/constants/all_font_sizes.dart';
import 'package:snack_delivery/core/constants/size_config.dart';

Widget buildOtpPageBody(BuildContext context,SizeConfig sizeConfig) {

  return Padding(
    padding: EdgeInsets.all(8),
      child: getOptAction(context, sizeConfig)
  );
}

getOptAction(BuildContext context, SizeConfig sizeConfig) {

  TextEditingController textEditingController = TextEditingController();
  StreamController<ErrorAnimationType>? errorController;

  bool hasError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();
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
     Text("We will sent you6 digit number via sms",
  style: TextStyle(
  color: Colors.grey,

  fontSize: kSmallBodyFontSize.sp)
  ),
      SizedBox(
        height: 8,
      ),
      Text(
        'Enter Your OPT Code Below',

        style: TextStyle(fontWeight: FontWeight.bold, fontSize: kLargeBodyFontSize.sp),

      ),

      SizedBox(
        height: 20,
      ),
      Form(
        key: formKey,
        child: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 8.0, horizontal: 8),
            child: PinCodeTextField(
              appContext: context,

              pastedTextStyle: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              length: 6,
              obscureText: true,
              obscuringCharacter: '*',

              blinkWhenObscuring: true,
              animationType: AnimationType.fade,
              validator: (v) {
                if (v!.length < 3) {
                  return "I'm from validator";
                } else {
                  return null;
                }
              },
              pinTheme: PinTheme(
                inactiveFillColor:Colors.white,
                inactiveColor: Colors.white,
                selectedFillColor: Colors.white,


                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(5),
                fieldHeight: 50,
                fieldWidth: 40,
                activeFillColor: Colors.white,
              ),
              cursorColor: Colors.black,
              animationDuration: Duration(milliseconds: 300),
              enableActiveFill: true,
              errorAnimationController: errorController,
              controller: textEditingController,
              keyboardType: TextInputType.number,
              boxShadows: [
                BoxShadow(
                  offset: Offset(0, 1),
                  color: Colors.black12,
                  blurRadius: 10,
                )
              ],
              onCompleted: (v) {
                print("Completed");
              },
              /*  onTap: () {
                      print("Pressed");
                    },*/
              onChanged: (value) {
                print(value);
                /*   setState(() {
                        currentText = value;
                      });*/
              },
              beforeTextPaste: (text) {
                print("Allowing to paste $text");
                //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                //but you can show anything you want here, like your pop up saying wrong paste format or etc
                return true;
              },
            )),
      ),



      SizedBox(
        height: sizeConfig.blockSizeVertical * 10,
      ),
      ElevatedButton(

          style: ElevatedButton.styleFrom(
              minimumSize: Size(double.infinity, 50), //
              primary: Colors.red// double.infinity is the width and 30 is the height
          ),
          child: Text("Varify Code", style: TextStyle(color: Colors.white, fontSize: kLargeTitleFontSize.sp, fontWeight: FontWeight.bold),),

          onPressed: () {}),
      //Spacer(),
      SizedBox(
        height: sizeConfig.blockSizeVertical * 5,
      ),
      Center(
        child: Text("Resent Otp in 6 s ",   style: TextStyle(
            color: Colors.grey,

            fontSize: kSmallBodyFontSize.sp)),
      )


    ],
  );
}

snackBar(String? message,BuildContext context) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message!),
      duration: Duration(seconds: 2),
    ),
  );
}