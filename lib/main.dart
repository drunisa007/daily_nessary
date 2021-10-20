import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:snack_delivery/core/utils/generate_material_color.dart';
import 'package:snack_delivery/feature/all_item/binding/all_item_binding.dart';
import 'package:snack_delivery/feature/all_item/view/all_item_page.dart';
import 'package:snack_delivery/feature/feature_main/binding/feature_binding.dart';
import 'package:snack_delivery/feature/feature_main/view/feature_page.dart';
import 'package:snack_delivery/feature/item_detail/binding/item_detail_binding.dart';
import 'package:snack_delivery/feature/item_detail/view/item_detail_page.dart';
import 'package:snack_delivery/feature/opt_screen/binding/otp_page_binding.dart';
import 'package:snack_delivery/feature/order_detail/binding/order_detail_binding.dart';
import 'package:snack_delivery/feature/order_detail/view/order_detail.dart';
import 'package:snack_delivery/feature/order_main/binding/order_page_binding.dart';
import 'package:snack_delivery/feature/phone_number_page/binding/phone_number_page_controller.dart';
import 'package:snack_delivery/feature/profile_info_page/binding/profile_info_page_binding.dart';
import 'package:snack_delivery/feature/profile_info_page/view/profile_info_page.dart';
import 'package:snack_delivery/feature/setting_page/binding/setting_page_binding.dart';
import 'package:snack_delivery/feature/setting_page/view/setting_page.dart';
import 'package:snack_delivery/feature/splashScreen/binding/splash_screen_page_binding.dart';
import 'package:snack_delivery/feature/splashScreen/view/splash_screen_page.dart';

import 'feature/opt_screen/view/otp_page.dart';
import 'feature/order_main/view/order_page.dart';
import 'feature/phone_number_page/view/phone_number_page.dart';

void main() {
  runApp(const MyApp());

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
     //    builder: DevicePreview.appBuilder,
      theme: ThemeData(
        primaryColor: generateMaterialColor(const Color(0xffff5c4d)),
        scaffoldBackgroundColor: generateMaterialColor(const Color(0xffE9E9E9)),
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: generateMaterialColor(const Color(0xffff5c4d)),

        ),
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
       GetPage(
            name: '/all-item-page',
            page: () => const AllItemPage(),
            binding: AllItemBinding()),
        GetPage(
            name: '/order-page',
            page: () =>  OrderPage(),
            binding: OrderPageBinding()),
        GetPage(name: '/order-detail-page',
            page: () => OrderDetail(),
        binding: OrderDetailBinding()
        ),
        GetPage(name: '/setting-page',
            page: () => SettingPage(),
            binding: SettingPageBinding()
        )
         GetPage(
            name: '/item-detail-page',
            page: () => const ItemDetailPage(),
            binding: ItemDetailBinding()),

      ],
      initialRoute: '/',
    );
  }
}

