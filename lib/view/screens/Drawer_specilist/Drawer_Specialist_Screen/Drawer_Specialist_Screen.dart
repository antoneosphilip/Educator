import 'package:educator/core/assets_manager/assets_manager.dart';
import 'package:educator/core/color_manager/color_manager.dart';
import 'package:educator/core/style_font_manager/style_font_manager.dart';
import 'package:educator/core/text_manager/text_manager.dart';
import 'package:educator/view/screens/Profile/Profile_Widget/Profile_Widget/Profile_Widget.dart';
import 'package:flutter/material.dart';

import '../../../core_widgets/Line_Seprated/Line_Seprated.dart';
import '../../../core_widgets/log_out_button/log_out_button.dart';
import '../../Profile/Profile_Screen/Profile_Screen.dart';
import '../../archive/archive_screen/archive_screen.dart';
import '../Drawer_Specialit_Widget/Drawer_Specialist_Widget.dart';
class DrawerSpecialist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          InkWell(
           onTap: ()=> Navigator.push(context, (MaterialPageRoute(builder: (context)=>profilescreen()))),
            child: SpecialstName(),
          ),
          LineSeprated(),
          Padding(
            padding: const EdgeInsets.only(top: 59,left: 51,bottom: 360),
            child: ListTile(
              leading: Container(
                  width: 35,
                  decoration: BoxDecoration(
                    color: ColorManager.colorPrimary,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  height: 36,
                  child: ImageIcon(AssetImage(AssetsManager.Archive,),color: Colors.white,)),
              title: Text(TextManager.Archive,style:getBoldStyle(color: ColorManager.colorblack,fontSize: 21),),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=> archivescreen()));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 51,bottom: 54, right: 100),
            child: Row(
              children: [
                Log_Out_Button(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
