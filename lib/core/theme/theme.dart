import 'package:educator/core/color_manager/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData lighttheme=ThemeData(



  appBarTheme: AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(

      statusBarColor: Colors.white,
    ),
    backgroundColor: Colors.white,
    elevation: 0,
    titleTextStyle: TextStyle(

        fontSize: 20,
        fontWeight: FontWeight.bold,
        height: 3
    ),
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
  ),
  backgroundColor: ColorManager.colorPrimary,

);
