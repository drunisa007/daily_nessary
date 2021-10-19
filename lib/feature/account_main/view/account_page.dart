import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        
        child: Column(
          children: [
            
           RaisedButton(
               child: Text("Phone Number Page"),
               onPressed: () => Get.toNamed('/phone_number_page')),
            RaisedButton(
                child: Text("Otp Page"),
                onPressed: () => Get.toNamed('/otp_page')),
            RaisedButton(
                child: Text("Profile info page"),
                onPressed: () => Get.toNamed('/profile_info_page')),

          ],
    
    
      ),
    )
    );
  }
}
