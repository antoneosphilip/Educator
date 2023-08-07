
import 'package:educator/core/color_manager/color_manager.dart';
import 'package:educator/core/style_font_manager/style_font_manager.dart';
import 'package:educator/core/text_manager/text_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core_widgets/Writing_Report_Textformfield/Writing_Report_TextformField.dart';
import '../../../core_widgets/definition_screen/definition_screen.dart';
import '../../../core_widgets/text_form_field/text_form_field_custom.dart';

class Student_Button extends StatefulWidget {
  @override
  State<Student_Button> createState() => _Student_ButtonState();
}
var reportcontroller=TextEditingController();

class _Student_ButtonState extends State<Student_Button> {
bool button=false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:button? BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: ColorManager.colorPrimary,
          )
      ):BoxDecoration(
          color: ColorManager.colorPrimary,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: ColorManager.colorPrimary,
          )
      ),
      width: 160,
      height: 60,
      child: TextButton(onPressed: (){
        setState(() {
          button=!button;
        });
      },
          child: Text(TextManager.Student,
            style:button? getBoldStyle(color: ColorManager.colorPrimary):getBoldStyle(color: Colors.white),)),
    );
  }
}
class FormWritereport extends StatelessWidget {
  const FormWritereport({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        definationscreen(text1: TextManager.Write_Report,text2: TextManager.Writing_Report_Description,),
        SizedBox(height: 20,),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Directionality(
                textDirection: TextDirection.ltr,
                child: TextFormFieldCustom(
                  validate: (value)
                  {

                    return null;
                  },
                  controller:reportcontroller ,
                  fillColor: ColorManager.colorsecond,
                  label: TextManager.Name_Or_Id,
                  prefix: false,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Student_Button(),
              ),
            ),
          ],
        ),
        SizedBox(height: 20,),
        Writing_Report_Textformfield(),
      ],
    );
  }
}
