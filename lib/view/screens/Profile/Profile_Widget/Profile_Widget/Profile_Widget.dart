
import 'package:flutter/cupertino.dart';

import '../../../../../core/color_manager/color_manager.dart';
import '../../../../../core/style_font_manager/style_font_manager.dart';
import '../../../../../core/text_manager/text_manager.dart';

class Profile_Item extends StatelessWidget {
final String? Text1;
final String? Text2;

  const Profile_Item({this.Text1, this.Text2});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          Text(Text1!,style: getRegularStyle(color: ColorManager.colorblack,fontSize: 20),),
          SizedBox(width: 30,),
          Expanded(child: Text(Text2!,style: getRegularStyle(color: ColorManager.colorPrimary,fontSize: 20),maxLines: 1,)),
        ],
      ),
    );
    ;
  }
}
class FormProfile extends StatelessWidget {
  const FormProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Profile_Item(Text1: TextManager.Name,Text2: TextManager.Name_Specialist,),
        Profile_Item(Text1: TextManager.Phone,Text2: TextManager.Phone_Number,),
        Profile_Item(Text1: TextManager.User,Text2: TextManager.User_2,),
        Profile_Item(Text1: TextManager.Pass,Text2: TextManager.Pass_Number,),
      ],
    );
  }
}

