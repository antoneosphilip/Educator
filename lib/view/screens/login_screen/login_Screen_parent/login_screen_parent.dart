import 'package:educator/core/color_manager/color_manager.dart';
import 'package:educator/view/screens/Home/home_screen/home_screen.dart';
import 'package:educator/view/screens/login_screen/login_widget/login_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../core/assets_manager/assets_manager.dart';
import '../../../../core/style_font_manager/style_font_manager.dart';
import '../../../../core/text_manager/text_manager.dart';
import '../../../core_widgets/evaluated_button/evaluated_button.dart';
import '../../../core_widgets/text_form_field/text_form_field_custom.dart';
class loginexamparentscreen extends StatefulWidget {
  @override
  State<loginexamparentscreen> createState() => _loginexamparentscreenState();
}
class _loginexamparentscreenState extends State<loginexamparentscreen> {
  var namecontroller=TextEditingController();
  var emailcontroller=TextEditingController();
  bool ispassword=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 100,),
            Stack(
              alignment: Alignment.center,
              children: [
                Image(
                  width: 255,
                  height: 74,
                  image: const AssetImage(
                    AssetsManager.welcome,
                  ),
                )
              ],
            ),
            SizedBox(height: 30,),
            Text(
              TextManager.Welcome,
              style: getRegularStyle(color: ColorManager.colorPrimary,
              ),
            ),
            SizedBox(height: 90,),
            Loginform(),
            SizedBox(height: 40,),
            Image(
              width: 255,
              height: 74,
              image: const AssetImage(
                AssetsManager.educator,
              ),
            ),
            Image(
              width: 255,
              height: 74,
              image: const AssetImage(
                AssetsManager.educatorsystem,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
