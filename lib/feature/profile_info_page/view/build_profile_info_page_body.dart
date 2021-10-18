import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snack_delivery/core/constants/size_config.dart';

Widget buildProfileInfoBuildBody(BuildContext context, SizeConfig sizeConfig) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: SingleChildScrollView(
      child: getProfileWidget(context, sizeConfig)
    ),
  );
}

Widget getProfileWidget(BuildContext context,SizeConfig sizeConfig) {

  return  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        height: sizeConfig.safeBlockVertical * 10,
      ),
      Center(
          child: Text(
            "Profile Info",
            style: TextStyle(
                color: Colors.black,
                fontSize: 24.sp,
                fontWeight: FontWeight.bold),
          )),
      Center(
        child: ClipRRect(
            borderRadius: BorderRadius.circular(50.sp),
            child: Image.asset("assets/images/snack.png",
                width: sizeConfig.blockSizeHorizontal * 40,
                height: sizeConfig.safeBlockVertical * 40,
                fit: BoxFit.contain)),
      ),
      SizedBox(
        height: sizeConfig.safeBlockVertical * 10,
      ),
      Text(
        "Customer Name",
        style: TextStyle(
          color: Colors.black,
          fontSize: 20.sp,
          fontWeight: FontWeight.w400,
        ),
      ),
      SizedBox(
        height: 8,
      ),
      TextField(

        autofocus: false,
        style: TextStyle(color: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.bold,),

        // controller: accountController,
        keyboardType: TextInputType.name,
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
          hintText: "Customer Name",

        ),

      ),

    ],
  );
}