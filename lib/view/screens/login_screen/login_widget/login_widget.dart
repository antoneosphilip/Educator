
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/color_manager/color_manager.dart';
import '../../../../core/style_font_manager/style_font_manager.dart';
import '../../../../core/text_manager/text_manager.dart';
import '../../../core_widgets/evaluated_button/evaluated_button.dart';
import '../../../core_widgets/text_form_field/text_form_field_custom.dart';
import '../../Home/home_screen/home_screen.dart';

class Loginform extends StatefulWidget {
  const Loginform({super.key});

  @override
  State<Loginform> createState() => _LoginformState();
}

class _LoginformState extends State<Loginform> {
  @override
  Widget build(BuildContext context) {
    bool ispassword=true;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 24),
          child:   Directionality(
            textDirection: TextDirection.ltr,
            child: TextFormFieldCustom(validate: (value)
            {
              return null;
            },
              fillColor: ColorManager.colorsecond,
              hint:TextManager.EMAIL ,
              prefix: false,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 24),
          child:   Directionality(
            textDirection: TextDirection.ltr,
            child: TextFormFieldCustom(
              validate: (String? value) {
                return null;
              },
              suffix: true,
              obSecure: ispassword?false:true,
              suffixIcon: ispassword?Icon(Icons.visibility):Icon(Icons.visibility_off),suffixOnPressed: (){
              setState(() {
                ispassword=!ispassword;
              });
            },
              hint: TextManager.PASSWORD,
              fillColor: Colors.white,

            ),
          ),
        ),
        SizedBox(height: 50,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
          child: ElevatedButtonCustom(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>homeparentScreen()));
          } ,widget: Text(TextManager.LOGIN, style: getRegularStyle(color: ColorManager.colorsecond,
              fontSize: 24
          ),),colors: ColorManager.colorPrimary,textColor: Colors.red,),
        ),
      ],
    );
  }
}
