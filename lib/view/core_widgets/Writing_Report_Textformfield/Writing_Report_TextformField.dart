
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/color_manager/color_manager.dart';
import '../../../core/text_manager/text_manager.dart';
import '../text_form_field/text_form_field_custom.dart';

class Writing_Report_Textformfield extends StatelessWidget {
  var Reportcontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: SizedBox( // <
        // --- SizedBox
        height: 250,
        width: 400,

        child: TextFormFieldCustom(validate: (value)
        {
          return null;
        },
          controller: Reportcontroller,
          maxLines: 400 ~/ 20,  // <-
          fillColor: ColorManager.colorsecond,
          hint:TextManager.Write_Report,
          prefix: false,
        ),
      ),
    );
    ;
  }
}
