import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snack_delivery/core/constants/size_config.dart';

Widget buildPhoneNumberBody(BuildContext context,SizeConfig sizeConfig) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: SingleChildScrollView(
      child: getPhoneNumber(context, sizeConfig)
    ),
  );
}

Widget getPhoneNumber(BuildContext context,SizeConfig sizeConfig) {

  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

      SizedBox(
        height: sizeConfig.blockSizeVertical*5,
      ),
      Center(

          child: Image.asset(
            "assets/images/snack.png",
            height: sizeConfig.blockSizeVertical*30,

            fit: BoxFit.cover,
          )),
      SizedBox(
        height: 24,
      ),
      Text(
        "Hello Welcome!!",
        style: TextStyle(
            color: Colors.grey,fontSize: 12.sp ),
      ),
      SizedBox(
        height:4,
      ),
      Text(
        "Varify your phone Number",
        style: TextStyle(
          color: Colors.black, fontSize: 20.sp, fontWeight: FontWeight.bold,),
      ),
      SizedBox(
        height: 16,
      ),
      TextFormField(

        autofocus: false,
        style: TextStyle(color: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.bold,),

        // controller: accountController,
        maxLength: 11,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(

          prefixIcon: Icon(
            Icons.phone,
            color: Colors.black45,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
                color: Colors.grey,
                width: 1
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              color: Colors.grey,




            ),
          ),
          hintText: "Phone number",

        ),

      ),
      SizedBox(
        height: 16,
      ),
      Center(
        child: ElevatedButton(

            style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50), //
                primary: Colors.red// double.infinity is the width and 30 is the height
            ),
            child: Text("Get Otp Code", style: TextStyle(color: Colors.white, fontSize: 20.sp, fontWeight: FontWeight.bold),),

            onPressed: () {}),
      )
    ],
  );
}






