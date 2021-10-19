import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snack_delivery/core/constants/all_font_sizes.dart';
import 'package:snack_delivery/core/constants/size_config.dart';

Widget buildProfileInfoBuildBody(BuildContext context, SizeConfig sizeConfig) {
  return Padding(
    padding: const EdgeInsets.all(kMarginBig),
    child: SingleChildScrollView(child: getProfileWidget(context, sizeConfig)),
  );
}

Widget getProfileWidget(BuildContext context, SizeConfig sizeConfig) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        height: sizeConfig.safeBlockVertical * 10,
      ),
      Center(
          child: Text(
        "Profile Info",
        style: TextStyle(
            color: Colors.black, fontSize: kLargeTitleFontSize.sp, fontWeight: FontWeight.bold),
      )),
      Center(
        child: ClipRRect(
            borderRadius: BorderRadius.circular(50.sp),
            child: Image.asset("assets/images/profile.png",
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
          fontSize: kLargeBodyFontSize.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
      SizedBox(
        height: 8,
      ),

      Container(
        child: Theme(
          data:Theme.of(context).copyWith(
            colorScheme: ThemeData().colorScheme.copyWith(
              primary:Colors.black,
            ),
          ),
          child: TextField(

            style: TextStyle(
              color: Colors.black,
              fontSize: kLargeBodyFontSize.sp,
              fontWeight: FontWeight.w500,
            ),
            decoration: InputDecoration(
              fillColor: Colors.white,

              prefixIcon: Icon(Icons.account_circle),
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
              hintText: "Customer Name"



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
        height: sizeConfig.blockSizeVertical*10,
      ),

      Center(
        child: ElevatedButton(

            style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50), //
                primary: Colors.red// double.infinity is the width and 30 is the height
            ),
            child: Text("Save Profile", style: TextStyle(color: Colors.white, fontSize: kLargeTitleFontSize.sp, fontWeight: FontWeight.bold),),

            onPressed: () {}),
      ),
    ],
  );
}
