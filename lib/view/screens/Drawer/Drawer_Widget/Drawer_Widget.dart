
import 'package:educator/view/screens/Bans/Bans_Screen/Bans_screen.dart';
import 'package:educator/view/screens/Reports/Reports_Widget/Reports_Widget.dart';
import 'package:educator/view_model/Educator_Cubit/Educator_Cubit/Cubit.dart';
import 'package:educator/view_model/Educator_Cubit/Educator_States/Educator_States.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/assets_manager/assets_manager.dart';
import '../../../../core/color_manager/color_manager.dart';
import '../../../../core/text_manager/text_manager.dart';
import '../../Exam/Exam_Screen/Exam_Screen.dart';
import '../../Home/home_screen/home_screen.dart';
import '../../Recording_absence/Recording_absence_screen/Rexording_absenc_screen.dart';
import '../../Reports/Reports_Screen/Reports_Screen.dart';
import '../../Summon_Guardian/Summon_Guardian_Screen/Summon_Guardian_screen.dart';

class DrawerItem extends StatelessWidget {
final String? ImageDrawer;
final String ?TextDrawer;
final Widget? pushto;

  const DrawerItem({this.ImageDrawer, this.TextDrawer,this.pushto});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Appcubit,Appstates>(
      listener: (Appcubit,Appstates){

      },
      builder: (context,index){
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
            title: Text(TextDrawer!,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color:Appcubit.get(context).isdark? Colors.white:Colors.black),),

            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=> pushto!));


            },
          ),
        );
      },
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
        DrawerItem(ImageDrawer: AssetsManager.Bans,TextDrawer: TextManager.Bans,pushto: BansScreen(),),
        DrawerItem(ImageDrawer: AssetsManager.Reports,TextDrawer: TextManager.Reports,pushto: ReportsScreen(),),
        DrawerItem(ImageDrawer: AssetsManager.summonguardian,TextDrawer: TextManager.summon_guardian,pushto: SummonGuardianScreen(),),
        DrawerItem(ImageDrawer: AssetsManager.Exam_Result,TextDrawer: TextManager.Exam_result,pushto: ExamScreen(),),
        DrawerItem(ImageDrawer: AssetsManager.Recording,TextDrawer: TextManager.Recording_Absence,pushto: RecordingAbsenceScreen(),),



      ],
    );
  }
}

