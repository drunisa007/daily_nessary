import 'package:flutter/material.dart';

AppBar getSimpleAppbar(String title){
  return AppBar(
    elevation: 0,
    centerTitle: true,
    title: Text(title,
      style: TextStyle(
        color: Colors.black,
      ),
    ),
    backgroundColor: Colors.white,
  );
}