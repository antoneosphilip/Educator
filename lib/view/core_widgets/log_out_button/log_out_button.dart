
import 'package:educator/view_model/Educator_Cubit/Educator_Cubit/Cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/assets_manager/assets_manager.dart';
import '../../../core/style_font_manager/style_font_manager.dart';
import '../../../core/text_manager/text_manager.dart';

class Log_Out_Button extends StatelessWidget {
  const Log_Out_Button({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        IconButton(onPressed: (){}, icon: Align(

            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.zero,
                width: 20,
                height: 20,
                color: Color(0xffF3F5F8),
                child: ImageIcon(AssetImage(AssetsManager.logout),color:  Color(0xff3F579E),)))),
        Text(TextManager.Logout,style: getRegularStyle(color:Appcubit.get(context).isdark? Colors.white:Colors.black,fontSize: 20),),
      ],
    );
  }
}
class Delete_Account extends StatelessWidget {
  const Delete_Account({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        IconButton(onPressed: (){}, icon: Align(
            alignment: Alignment.centerLeft,
            child: Center(child: Icon(Icons.delete,color: Appcubit.get(context).isdark?Colors.white:Colors.black,)))),
        Text(TextManager.Delete,style: getRegularStyle(color:Appcubit.get(context).isdark? Colors.white:Colors.black,fontSize: 20),),

      ],
    );

  }
}

