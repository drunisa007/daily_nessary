import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snack_delivery/core/constants/all_font_sizes.dart';
import 'package:snack_delivery/core/constants/size_config.dart';

AppBar getAppBarWithBackArrow(String title,SizeConfig mConfig,action){
  return  AppBar(
    backgroundColor: Colors.white,
    centerTitle: true,
    title: Text(title,style: TextStyle(
        color: Colors.black,
        fontSize: KAppBarTitleFontSize.sp
    ),),
    leading: IconButton(
      onPressed:action,
      icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
    ),
  );
}