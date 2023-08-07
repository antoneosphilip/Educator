
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/color_manager/color_manager.dart';
import '../../../../core/style_font_manager/style_font_manager.dart';
import '../../../../core/text_manager/text_manager.dart';

class SpecialstName extends StatelessWidget {
  const SpecialstName({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 130,bottom: 68,right: 50,left: 20),
      child: Container(
        decoration: BoxDecoration(
          color: ColorManager.colorPrimary,
          borderRadius: BorderRadius.circular(12),
        ),
        width: 224,
        height: 76 ,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 13),
              child: Column(
                children: [
                  Text(TextManager.Name_Specialist,style:getBoldStyle(color: Colors.white,fontSize: 15,)),
                  Text(TextManager.Social_Specialst,style: getBoldStyle(color: Colors.white,letterspacing: 2)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
