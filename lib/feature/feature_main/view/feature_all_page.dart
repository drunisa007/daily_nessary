import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:snack_delivery/feature/feature_main/controller/feature_controller.dart';

BottomNavigationBar getBottomNavBarForFeature(
    FeatureController featureController, context) {
  return BottomNavigationBar(
    items: [
      getNavigationBarItem(
          "assets/images/home.svg", 'Home', context, 0, featureController),
      getNavigationBarItem(
          "assets/images/cart.svg", 'Cart', context, 1, featureController),
      getNavigationBarItem(
          "assets/images/order.svg", 'Order', context, 2, featureController),
      getNavigationBarItem("assets/images/profile.svg", 'Account', context, 3,
          featureController),
    ],
    elevation: 0,
    selectedItemColor: Theme.of(context).primaryColor,
    currentIndex: featureController.getIndex(),
    selectedFontSize: 14,
    unselectedFontSize: 14,
    onTap: (index) {
      featureController.changeIndex(index);
    },
    type: BottomNavigationBarType.fixed,
  );
}

BottomNavigationBarItem getNavigationBarItem(
    iconName, label, context, index, FeatureController mController) {
  return BottomNavigationBarItem(
    icon: SvgPicture.asset(
      iconName,
      width: 24,
      height: 24,
      color: index == mController.getIndex()
          ? Theme.of(context).primaryColor
          : Colors.grey,
    ),
    label: label,
  );
}
