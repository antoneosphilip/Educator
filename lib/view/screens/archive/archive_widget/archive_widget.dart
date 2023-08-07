
import 'package:educator/view/core_widgets/Line_Seprated/Line_Seprated.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../core/color_manager/color_manager.dart';
import '../../../../core/style_font_manager/style_font_manager.dart';
import '../../../../core/text_manager/text_manager.dart';
import '../../../core_widgets/Writing_Report_Textformfield/Writing_Report_TextformField.dart';
import '../../../core_widgets/text_form_field/text_form_field_custom.dart';

class FormArchive extends StatelessWidget {
  var daycontroller=TextEditingController();
  var archivecontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20,left: 20),
          child: TextFormFieldCustom(
            validate: (value)
            {
              return null;
            },
            controller:daycontroller ,
            fillColor: ColorManager.colorsecond,
            hint:TextManager.Date_2 ,
            suffix: true,
            suffixIcon: IconButton(
              onPressed: (){
                showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2100),
                ).then((value) => {
                  daycontroller.text =  DateFormat.yMMMd().format(value!),
                });
              },
              icon:Icon(Icons.keyboard_arrow_down,color: ColorManager.colorblack,), ),
            prefix: false,
          ),

        ),
        SizedBox(height: 10,),
   LineSeprated(),
        SizedBox(height: 20,),
        Writing_Report_Textformfield(),
        SizedBox(height: 10,),
        Align(child: Text(TextManager.time_Report,style: getBoldStyle(color: Colors.grey,fontSize: 15),),alignment: AlignmentDirectional.centerEnd,),
      ],
    );
  }
}
