import 'package:educator/core/assets_manager/assets_manager.dart';
import 'package:educator/core/color_manager/color_manager.dart';
import 'package:educator/core/color_manager/color_manager.dart';
import 'package:educator/core/color_manager/color_manager.dart';
import 'package:educator/core/color_manager/color_manager.dart';
import 'package:educator/core/color_manager/color_manager.dart';
import 'package:educator/core/color_manager/color_manager.dart';
import 'package:educator/core/color_manager/color_manager.dart';
import 'package:educator/core/color_manager/color_manager.dart';
import 'package:educator/core/style_font_manager/style_font_manager.dart';
import 'package:educator/core/text_manager/text_manager.dart';
import 'package:educator/view/screens/Drawer/Drawer_Widget/Drawer_Widget.dart';
import 'package:educator/view/screens/Home/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
class Navbarparent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: ListView(

        // Remove padding
        padding: EdgeInsets.zero,
        children: [

          Padding(
            padding: const EdgeInsets.only(top: 30,bottom: 0),
            child: UserAccountsDrawerHeader(
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
          ),
          Padding(
              padding: const EdgeInsets.only(top:50 ,left: 20,bottom: 100,right: 50),
              child: Column(
                children: [
                  Drawer_Items(),
                ],
              )
          ),
          Padding(
            padding: const EdgeInsets.only(left: 51,bottom: 54, right: 100),
            child: Row(
              children: [
                IconButton(onPressed: (){}, icon: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                        width: 45,
                        height: 45,
                        color: Color(0xffF3F5F8),
                        child: ImageIcon(AssetImage('assets/images/Icon (1).png'),color:  Color(0xff3F579E),)))),
                Text(TextManager.Logout,style: TextStyle(fontSize: 27.63,fontWeight: FontWeight.bold ,color:  Color(0xff485053)),),
              ],
            ),
          ),


        ],
      ),
    );
  }
}