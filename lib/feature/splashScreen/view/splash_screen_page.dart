import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:snack_delivery/core/constants/size_config.dart';
import 'package:snack_delivery/core/widgets/build_not_found_body.dart';
import 'package:snack_delivery/feature/splashScreen/controller/splash_screen_page_controller.dart';
class SplashScreenPage extends StatelessWidget {


  SplashSreenPageController splashSreenPageController = Get.find<SplashSreenPageController>();
  @override
  Widget build(BuildContext context) {

    SizeConfig sizeConfig = Get.find<SizeConfig>();
    sizeConfig.init(context);


    return ScreenUtilInit(
     builder: () =>  Scaffold(
       backgroundColor: Colors.white,

        body: buildNotFoundBody(context,sizeConfig,title: "No item found",subtitle: "Use have n't add data yet",buttonTittle: "Go to Shop",
            imagePath: "assets/images/item.png",onClick: () => print("clicked"))

     /*  Column(

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
        ),*/
      ),
    );
  }
}
