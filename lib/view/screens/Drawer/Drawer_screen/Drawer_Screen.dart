import 'package:educator/core/color_manager/color_manager.dart';
import 'package:educator/core/style_font_manager/style_font_manager.dart';
import 'package:educator/core/text_manager/text_manager.dart';
import 'package:educator/view/screens/Drawer/Drawer_Widget/Drawer_Widget.dart';
import 'package:educator/view_model/Educator_Cubit/Educator_Cubit/Cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../../view_model/Educator_Cubit/Educator_States/Educator_States.dart';
import '../../../core_widgets/log_out_button/log_out_button.dart';
class Navbarparent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Appcubit,Appstates>(
      listener: (context,state){},
      builder: (context,state){
        return Drawer(
          child: ListView(
            // Remove padding
            padding: EdgeInsets.zero,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30,bottom: 0),
                child: Column(
                  children: [
                    UserAccountsDrawerHeader(
                      margin: EdgeInsets.only(bottom: 0),
                      decoration: BoxDecoration(
                        color: ColorManager.colorPrimary,
                      ),
                      accountName: Text(TextManager.persons_email,style:getRegularStyle(color: Colors.white,fontSize: 15)),
                      accountEmail: Text(TextManager.person_name,style:getRegularStyle(color: Colors.white,fontSize: 15)),
                      currentAccountPicture: CircleAvatar(
                        backgroundColor: ColorManager.colorPrimary,
                        backgroundImage: NetworkImage("https://oflutter.com/wp-content/uploads/2021/02/girl-profile.png",),
                      ),

                    ),
                    // Align(
                    //   alignment: Alignment.topLeft,
                    //   child: IconButton(onPressed: (){
                    //     Appcubit.get(context).ChangeAppMode();
                    //   }, icon:Appcubit.get(context).isdark? Icon(Icons.dark_mode_rounded,color: Colors.white,size: 24,):Icon(Icons.light_mode_rounded,color: Colors.black,size: 24,)),
                    // ),


                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top:50 ,left: 20,bottom: 0,right: 50),
                  child: Column(
                    children: [
                      Drawer_Items(),
                    ],
                  )
              ),
              Padding(
                padding: const EdgeInsets.only(top:0,left: 35,bottom: 54, right: 80),
                child: Column(
                  children: [
                    ToggleSwitch(
                      minWidth: 90.0,
                      cornerRadius: 20.0,
                      activeBgColors: [[Colors.black!], [ColorManager.colorPrimary!]],
                      activeFgColor: Colors.white,
                      inactiveBgColor: Colors.grey,
                      inactiveFgColor: Colors.white,
                      initialLabelIndex: 1,
                      totalSwitches: 2,
                      labels: ['Dark', 'Light'],
                      radiusStyle: true,
                      onToggle: (index) {
                        Appcubit.get(context).ChangeAppMode();
                        print('switched to: $index');
                      },
                    ),
                    Delete_Account(),

                    Row(
                      children: [

                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Log_Out_Button(),
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}