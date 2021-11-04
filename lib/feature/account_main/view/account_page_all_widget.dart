import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:snack_delivery/core/constants/all_font_sizes.dart';
import 'package:snack_delivery/core/constants/size_config.dart';
import 'package:snack_delivery/core/utils/default_style.dart';
import 'package:snack_delivery/feature/account_main/controller/account_page_controller.dart';

Widget buildAccountPageAllWidget(BuildContext context,SizeConfig sizeConfig, AccountPageController accountPageController) {


  return ListView(
    children: [
      buildSettingProfile(context, sizeConfig,accountPageController),
      SizedBox(height: 8,),
      buildSettingTitleWidget(context, sizeConfig,accountPageController)

    ],
  );
}

Widget buildSettingTitleWidget(BuildContext context,SizeConfig sizeConfig,AccountPageController accountPageController) {

  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(

      children: [
        ///My address setting
        InkWell(
          onTap: () =>Get.toNamed("/my-address-page"),
          child: Card(
            elevation: 0,

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Icon(Icons.person_pin_outlined,color: Colors.black,),
                  SizedBox(
                    width : 8,
                  ),
                  Text("My Address",style: TextStyle(color: Colors.black,fontSize: kLargeBodyFontSize.sp,fontWeight: FontWeight.w500)),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,size: 18.sp,),

                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 6,
        ),


        ///help Center Setting
        Card(
          elevation: 0,

          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Icon(Icons.phone_in_talk_rounded,color: Colors.black,),
                SizedBox(
                  width : 8,
                ),
                Text("Help Center",style: TextStyle(color: Colors.black,fontSize: kLargeBodyFontSize.sp,fontWeight: FontWeight.w500)),
                Spacer(),
                Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,size: 18.sp,),

              ],
            ),
          ),
        ),
        SizedBox(
          height: 6,
        ),


        ///About Daily Setting
        InkWell(
          onTap: () => Get.toNamed('/about-us-page'),
          child: Card(
            elevation: 0,

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Icon(Icons.info_outline_rounded,color: Colors.black,),
                  SizedBox(
                    width : 8,
                  ),
                  Text("About Daily",style: TextStyle(color: Colors.black,fontSize: kLargeBodyFontSize.sp,fontWeight: FontWeight.w500)),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,size: 18.sp,),

                ],
              ),
            ),
          ),
        ),  SizedBox(
          height: 6,
        ),


        ///Daily App Setting

        Card(
          elevation: 0,

          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Icon(Icons.android_rounded,color: Colors.black,),
                SizedBox(
                  width : 8,
                ),
                Text("Daily App",style: TextStyle(color: Colors.black,fontSize: kLargeBodyFontSize.sp,fontWeight: FontWeight.w500)),
                Spacer(),
                Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,size: 18.sp,),

              ],
            ),
          ),
        ),
        SizedBox(
          height: 6,
        ),


        ///Logout Setting


        Card(
          elevation: 0,

          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Icon(Icons.exit_to_app_outlined,color: Colors.black,),
                SizedBox(
                  width : 8,
                ),
                Text("Logout Account",style: TextStyle(color: Colors.black,fontSize: kLargeBodyFontSize.sp,fontWeight: FontWeight.w500)),
                Spacer(),
                Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,size: 18.sp,),

              ],
            ),
          ),
        ),
        SizedBox(
          height: 6,
        ),




        Card(
          elevation: 0,

          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [

                Text("Contact Us Via Social Media",style: TextStyle(color: Colors.black,fontSize: kLargeBodyFontSize.sp),),
              SizedBox(
                height: 8,
              ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      elevation: 4,
                      color: Color(0xfff7f7f7),
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                          width: sizeConfig.blockSizeHorizontal*13,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/viber.png",height: sizeConfig.blockSizeVertical*5,fit: BoxFit.fitHeight,),
                           ]
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Card(
                      elevation: 4,
                      color: Color(0xfff7f7f7),
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        width: sizeConfig.blockSizeHorizontal*13,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/facebook.png",height: sizeConfig.blockSizeVertical*5,fit: BoxFit.fill),

                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),

                    Card(
                      elevation: 4,
                      color: Color(0xfff7f7f7),
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        width: sizeConfig.blockSizeHorizontal*13,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/messenger.png",height: sizeConfig.blockSizeVertical*5,fit: BoxFit.fitHeight,),

                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),

                    Card(

                      elevation: 4,
                      color: Color(0xfff7f7f7),
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        width: sizeConfig.blockSizeHorizontal*13,

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/gmail.png",height: sizeConfig.blockSizeVertical*5,fit: BoxFit.fitHeight,),

                    ],
                  ),
                ),
          ),
                    SizedBox(
                      width: 8,
                    ),


                  ],
                ),
              ],
            ),
          ),
        ),

        
      ],
    ),
  );


}

Widget buildSettingProfile(BuildContext context,SizeConfig sizeConfig,AccountPageController accountPageController)
{

  return Container(

    height: sizeConfig.blockSizeVertical * 14,
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Colors.redAccent.withOpacity(0.3),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 2,
            spreadRadius: 2,

            offset: Offset(0, 2), // Shadow position
          ),
      ],

      borderRadius: BorderRadius.only(
        bottomLeft : Radius.circular(50),
        bottomRight:  Radius.circular(50),
      )
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
    //  mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 16,
        ),
        Container(
            decoration: BoxDecoration(
              color: colorWhite,
              shape: BoxShape.circle,
            ),
            child: Image.asset("assets/images/profile.png",height: sizeConfig.blockSizeVertical * 10,fit: BoxFit.fitHeight,)),
        SizedBox(
          width: 16,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome",style: TextStyle(color: Colors.black,fontSize: kLargeBodyFontSize.sp,fontWeight: FontWeight.w500),),
            Text("09420110110",style: TextStyle(color: Colors.black,fontSize: kLargeBodyFontSize.sp,fontWeight: FontWeight.w500))
          ],
        )

      ],
    ),
  );
}