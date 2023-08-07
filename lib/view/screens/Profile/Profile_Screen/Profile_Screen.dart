
import 'package:educator/core/color_manager/color_manager.dart';
import 'package:educator/core/style_font_manager/style_font_manager.dart';
import 'package:educator/core/text_manager/text_manager.dart';
import 'package:educator/view/core_widgets/Line_Seprated/Line_Seprated.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core_widgets/app_bar_custom/appbar_custom.dart';
import '../../../core_widgets/evaluated_button/evaluated_button.dart';
import '../../Drawer_specilist/Drawer_Specialist_Screen/Drawer_Specialist_Screen.dart';
import '../Profile_Widget/Profile_Widget/Profile_Widget.dart';
class profilescreen extends StatefulWidget {
  @override
  State<profilescreen> createState() => _archiveviewscreenState();
}
class _archiveviewscreenState extends State<profilescreen> {
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
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(TextManager.Profile,style: getRegularStyle(color: ColorManager.colorblack),)),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(TextManager.Profile_Description,style: getBoldStyle(color: Colors.grey,fontSize: 15),)),
                  SizedBox(height: 20,),
             LineSeprated(),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child:   Column(
                      children: [
                        FormProfile(),
                      ],
                    ),
                  ),
                  SizedBox(height: 250,),
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
