import 'dart:async';

import 'package:get/get.dart';

class SplashSreenPageController extends GetxController {


  SplashSreenPageController() {
    initState();

    print('spalsh screen flutter');
  }

  void initState() {


    Timer(Duration(seconds: 3),
            ()=> Get.offNamed('/')

      /*Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                HomeScreen()
            )
        )*/
    );
  }
}