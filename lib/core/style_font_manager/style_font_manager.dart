import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../color_manager/color_manager.dart';



TextStyle _getTextStyle(double fontSize,  Color color , FontWeight fontWeight,letterspacing ) {
  return GoogleFonts.cairo(
      color: color, fontSize: fontSize,decorationColor: ColorManager.colorPrimary,fontWeight: fontWeight,letterSpacing: letterspacing,);
}

// regular style

TextStyle getRegularStyle(
    {double fontSize = 30, required Color color,double letterspacing=0}) {
  return _getTextStyle(fontSize, color , FontWeight.bold,letterspacing);
}

// medium style

TextStyle getMediumStyle(
    {double fontSize = 12, required Color color,double letterspacing=0}) {
  return _getTextStyle(fontSize, color, FontWeight.w500,letterspacing);
}

// medium style

TextStyle getLightStyle(
    {double fontSize = 12, required Color color,double letterspacing=0}) {
  return _getTextStyle(fontSize, color, FontWeight.w300,letterspacing);
}

// bold style

TextStyle getBoldStyle({double fontSize = 12, required Color color,double letterspacing=0}) {
  return _getTextStyle(fontSize,  color, FontWeight.bold,letterspacing);

}

// semibold style

TextStyle getSemiBoldStyle(
    {double fontSize = 12, required Color color,double letterspacing=0}) {
  return _getTextStyle(fontSize, color, FontWeight.w600,letterspacing);
}