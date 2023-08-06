import 'package:flutter/material.dart';

import '../../../core/color_manager/color_manager.dart';




class ElevatedButtonCustom extends StatelessWidget {
  final String? text;
  final Function? onPressed;
  final double? radius;
  final double? width;
  final double? height;
  final double? elevation;
  final Color? colors;
  final Color? textColor;
  final double? fontSize;
  final Widget? widget;
  final Color? borderColor;
  final FontWeight? fontWeight;
  final bool ? disable;
  const ElevatedButtonCustom({

    this.disable = true,
    Key? key,
    this.text,
    this.onPressed,
    this.radius = 25,
    this.width = 200,
    this.height = 60,
    this.elevation = 0,
    this.colors,
    this.fontSize,
    this.textColor = Colors.red,
    this.widget,
    this.borderColor = ColorManager.colorPrimary,
    this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          onPressed!();
        },

        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius!),
            side: BorderSide(color: borderColor!, width: 1),
          ), backgroundColor: colors ,
          elevation: elevation,
          fixedSize: Size(width!, height!),


          // padding:
          //     EdgeInsets.symmetric(horizontal: width!.w, vertical: height!.h),
        ),
        child:widget

    );
  }
}
