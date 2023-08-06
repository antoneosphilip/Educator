import 'package:educator/view/core_widgets/app_bar_custom/appbar_custom.dart';
import 'package:educator/view/core_widgets/list_name/list_name.dart';
import 'package:educator/view/screens/Drawer/Drawer_screen/Drawer_Screen.dart';
import 'package:educator/view/screens/Home/Home_Widget/Home_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/color_manager/color_manager.dart';
import '../../../../core/style_font_manager/style_font_manager.dart';
import '../../../../core/text_manager/text_manager.dart';
class homeparentScreen extends StatefulWidget {
  @override
  State<homeparentScreen> createState() => _homeparentscreenSiewscreenState();
}
class _homeparentscreenSiewscreenState extends State<homeparentScreen> {
  List<String> nameslist=[
    "ADAM (4)",
    "SALMA (0)",
    "NOHA (0)",
  ];
  List<String> prefernce=[
    "prefernce",
    "absert",
    "prefernce",
  ];
  var studentcontroller=TextEditingController();
  int currentindex=0;
  bool? check1 = false; //true for checked checkbox, false for unchecked one
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     drawer: Navbarparent(),
      backgroundColor: Colors.grey[200],
      appBar: customAppBar(context),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: 40,),
Names(namelist: [nameslist],heigh: 60,),
            Container(
              width: double.infinity,
              height: 30,
              color: Colors.white,
              child: Names(namelist: prefernce,),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  FormHome()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
