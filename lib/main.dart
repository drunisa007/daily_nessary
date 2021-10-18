import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snack_delivery/core/utils/generate_material_color.dart';
import 'package:snack_delivery/feature/feature_main/binding/feature_binding.dart';
import 'package:snack_delivery/feature/feature_main/view/feature_page.dart';
import 'package:snack_delivery/feature/opt_screen/binding/otp_page_binding.dart';
import 'package:snack_delivery/feature/phoneNumberScreen/binding/phone_number_page_controller.dart';
import 'package:snack_delivery/feature/phoneNumberScreen/view/phone_number_page.dart';
import 'package:snack_delivery/feature/profile_info_page/binding/profile_info_page_binding.dart';
import 'package:snack_delivery/feature/profile_info_page/view/profile_info_page.dart';
import 'package:snack_delivery/feature/splashScreen/binding/splash_screen_page_binding.dart';
import 'package:snack_delivery/feature/splashScreen/view/splash_screen_page.dart';

import 'feature/opt_screen/view/otp_page.dart';

void main() {
  //runApp(const MyApp());

  /*  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(), // Wrap your app
  ));*/
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      title: 'Snack Delivery',
       //  builder: DevicePreview.appBuilder,
      theme: ThemeData(
        primaryColor: generateMaterialColor(const Color(0xff04D4F0)),
        scaffoldBackgroundColor: generateMaterialColor(const Color(0xffE9E9E9)),
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: generateMaterialColor(const Color(0xffff5c4d))),
      ),
      getPages: [
        GetPage(
            name: '/',
            page: () => const FeaturePage(),
            binding: FeatureBinding()),
        GetPage(
            name: '/splash_screen_page',
            page: () =>  SplashScreenPage(),
          binding: SplashScreenPageBinding()
           ),
        GetPage(
          name: '/phone_number_page',
          page: () =>  PhoneNumberPage(),
          binding: PhoneNumberPageBinding()
        ),
        GetPage(
          name: '/otp_page',
          page: () =>  OtpPage(),
          binding: OtpPageBinding()
        ),
        GetPage(
            name: '/profile_info_page',
            page: () =>  ProfileInfoPage(),
          binding: ProfileInfoPageBinding()

        ),

      ],
      initialRoute: '/otp_page',
    );
  }
}
