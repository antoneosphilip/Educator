
import 'package:educator/view/screens/Bans/Bans_Screen/Bans_screen.dart';
import 'package:educator/view/screens/Reports/Reports_Widget/Reports_Widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/assets_manager/assets_manager.dart';
import '../../../../core/color_manager/color_manager.dart';
import '../../../../core/text_manager/text_manager.dart';
import '../../Exam/Exam_Screen/Exam_Screen.dart';
import '../../Home/home_screen/home_screen.dart';
import '../../Reports/Reports_Screen/Reports_Screen.dart';
import '../../Summon_Guardian/Summon_Guardian_Screen/Summon_Guardian_screen.dart';

class DrawerItem extends StatelessWidget {
final String? ImageDrawer;
final String ?TextDrawer;
final Widget? pushto;

  const DrawerItem({this.ImageDrawer, this.TextDrawer,this.pushto});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: ListTile(
        leading: Container(
            width: 35,
            decoration: BoxDecoration(
              color: ColorManager.colorPrimary,

              borderRadius: BorderRadius.circular(7),
            ),
            height: 36,

            child:ImageIcon(AssetImage(ImageDrawer!),color: Colors.white,)),
        title: Text(TextDrawer!,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),),

        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder:(context)=> pushto!));


        },
      ),
    );
    ;
  }
}
class Drawer_Items extends StatelessWidget {
  const Drawer_Items({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DrawerItem(ImageDrawer: AssetsManager.Home,TextDrawer: TextManager.Home_Drawn,pushto: homeparentScreen(),),
        DrawerItem(ImageDrawer: AssetsManager.Home,TextDrawer: TextManager.Bans,pushto: BansScreen(),),
        DrawerItem(ImageDrawer: AssetsManager.Home,TextDrawer: TextManager.Reports,pushto: ReportsScreen(),),
        DrawerItem(ImageDrawer: AssetsManager.Home,TextDrawer: TextManager.summon_guardian,pushto: SummonGuardianScreen(),),
        DrawerItem(ImageDrawer: AssetsManager.Home,TextDrawer: TextManager.Exam_result,pushto: ExamScreen(),),
        DrawerItem(ImageDrawer: AssetsManager.Home,TextDrawer: TextManager.Recording_Absence,),



      ],
    );
  }
}

