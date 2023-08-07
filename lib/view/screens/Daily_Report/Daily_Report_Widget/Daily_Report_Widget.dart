
import 'package:educator/core/color_manager/color_manager.dart';
import 'package:educator/core/style_font_manager/style_font_manager.dart';
import 'package:educator/core/text_manager/text_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core_widgets/Writing_Report_Textformfield/Writing_Report_TextformField.dart';
import '../../../core_widgets/definition_screen/definition_screen.dart';
import '../../../core_widgets/text_form_field/text_form_field_custom.dart';
class FormDailyreport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        definationscreen(text1: TextManager.Daily_Report,text2: TextManager.Daily_Report_Description,),
        SizedBox(height: 20,),
        Writing_Report_Textformfield(),
      ],
    );
  }
}
