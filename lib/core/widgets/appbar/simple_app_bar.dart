import 'package:flutter/material.dart';

AppBar getSimpleAppbar(String title){
  return AppBar(
    title: Text(title,
      style: TextStyle(
        color: Colors.black,
      ),
    ),
    backgroundColor: Colors.white,
  );
}