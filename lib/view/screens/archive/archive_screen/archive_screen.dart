

import 'package:educator/core/style_font_manager/style_font_manager.dart';
import 'package:educator/core/text_manager/text_manager.dart';
import 'package:educator/view/core_widgets/Line_Seprated/Line_Seprated.dart';
import 'package:educator/view/core_widgets/app_bar_custom/appbar_custom.dart';
import 'package:educator/view/core_widgets/definition_screen/definition_screen.dart';
import 'package:educator/view/core_widgets/evaluated_button/evaluated_button.dart';
import 'package:educator/view/core_widgets/text_form_field/text_form_field_custom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../core/color_manager/color_manager.dart';
import '../../Drawer_specilist/Drawer_Specialist_Screen/Drawer_Specialist_Screen.dart';
import '../archive_widget/archive_widget.dart';
class archivescreen extends StatefulWidget {
  @override
  State<archivescreen> createState() => _archiveviewscreenState();
}

class _archiveviewscreenState extends State<archivescreen> {
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
                  definationscreen(text1: TextManager.Archive,text2: TextManager.Archive_Description,ButtonExam: false),
                  SizedBox(height: 20,),
                LineSeprated(),
                  SizedBox(height: 10,),
                  FormArchive(),
                  SizedBox(height: 50,),
                  Center(child: ElevatedButtonCustom(onPressed: (){}, widget:Text(TextManager.Back),colors: Colors.white, )),
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
