import 'package:educator/core/color_manager/color_manager.dart';
import 'package:educator/core/style_font_manager/style_font_manager.dart';
import 'package:educator/core/text_manager/text_manager.dart';
import 'package:educator/view/core_widgets/app_bar_custom/appbar_custom.dart';
import 'package:educator/view/core_widgets/definition_screen/definition_screen.dart';
import 'package:educator/view/core_widgets/text_form_field/text_form_field_custom.dart';
import 'package:educator/view/screens/Drawer_specilist/Drawer_Specialist_Screen/Drawer_Specialist_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core_widgets/Writing_Report_Textformfield/Writing_Report_TextformField.dart';
import '../../../core_widgets/evaluated_button/evaluated_button.dart';
import '../Writing_Report_Widget/Writing_Report_Widget.dart';
class writingreportscreen extends StatefulWidget {
  @override
  State<writingreportscreen> createState() => _writingreportviewscreenState();
}
class _writingreportviewscreenState extends State<writingreportscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerSpecialist(),
      appBar: customAppBar(context),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
           FormWritereport(),
                  SizedBox(height: 100,),
                  Row(
                    children: [
                      Expanded(
                        child:Center(child: ElevatedButtonCustom(onPressed: (){}, widget:Text(TextManager.Back),colors: Colors.white, )),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Center(child: ElevatedButtonCustom(onPressed: (){}, widget:Text(TextManager.Send,style: getBoldStyle(color: Colors.white),),colors:ColorManager.colorPrimary, )),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}