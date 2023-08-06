import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../color_manager/color_manager.dart';



TextStyle _getTextStyle(double fontSize,  Color color , FontWeight fontWeight ) {
  return GoogleFonts.cairo(
      color: color, fontSize: fontSize,decorationColor: ColorManager.colorPrimary,fontWeight: fontWeight);
}

// regular style

TextStyle getRegularStyle(
    {double fontSize = 30, required Color color}) {
  return _getTextStyle(fontSize, color , FontWeight.bold);
}

// medium style

TextStyle getMediumStyle(
    {double fontSize = 12, required Color color}) {
  return _getTextStyle(fontSize, color, FontWeight.w500);
}

// medium style

TextStyle getLightStyle(
    {double fontSize = 12, required Color color}) {
  return _getTextStyle(fontSize, color, FontWeight.w300);
}

// bold style

TextStyle getBoldStyle({double fontSize = 12, required Color color}) {
  return _getTextStyle(fontSize,  color, FontWeight.bold);
}

// semibold style

TextStyle getSemiBoldStyle(
    {double fontSize = 12, required Color color}) {
  return _getTextStyle(fontSize, color, FontWeight.w600);
}