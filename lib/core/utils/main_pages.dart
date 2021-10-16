import 'package:flutter/material.dart';
import 'package:snack_delivery/feature/account_main/view/account_page.dart';
import 'package:snack_delivery/feature/cart_main/view/cart_page.dart';
import 'package:snack_delivery/feature/home_main/view/home_page.dart';
import 'package:snack_delivery/feature/order_main/view/order_page.dart';

class MainPages{
  List<Widget> mPages =[HomePage(),CartPage(),OrderPage(),AccountPage()];

  Widget getPages(int index){
    return mPages[index];
  }
}