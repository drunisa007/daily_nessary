import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:snack_delivery/core/constants/size_config.dart';
class SplashScreenPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    SizeConfig sizeConfig = Get.find<SizeConfig>();
    sizeConfig.init(context);


    return ScreenUtilInit(
     builder: () =>  Scaffold(
       backgroundColor: Colors.white,

        body: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child:   Container(
                  width: sizeConfig.blockSizeHorizontal * 30,
                  height: sizeConfig.blockSizeVertical * 30,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/profile.png")
                      )
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
