import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snack_delivery/core/utils/generate_material_color.dart';
import 'package:snack_delivery/feature/feature_main/binding/feature_binding.dart';
import 'package:snack_delivery/feature/feature_main/view/feature_page.dart';

void main() {
  //runApp(const MyApp());

    runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(), // Wrap your app
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      title: 'Snack Delivery',
         builder: DevicePreview.appBuilder,
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
      ],
      initialRoute: '/',
    );
  }
}
