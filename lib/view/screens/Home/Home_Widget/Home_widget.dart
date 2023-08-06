
import 'package:educator/core/text_manager/text_manager.dart';
import 'package:flutter/cupertino.dart';

import '../../../core_widgets/Card_item_Screen/Card_item_Screen.dart';
import '../../../core_widgets/definition_screen/definition_screen.dart';

class FormHome extends StatelessWidget {
  const FormHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        definationscreen(text1: TextManager.Home_words,text2: TextManager.Home_words2,ButtonExam: true),
        SizedBox(height: 10,),
        Cardeducator(text1: TextManager.Bans,text2: TextManager.Date,text3: TextManager.we_would_like,text4: TextManager.we_would_like,Show_Text: true),
        SizedBox(height: 10,),
        Cardeducator(text1: TextManager.Reports,text2: TextManager.Date,text3: TextManager.we_would_like,text4: TextManager.we_would_like,Show_Text: true),
        SizedBox(height: 10,),
        Cardeducator(text1: TextManager.Exam,text2: TextManager.Date,text3: TextManager.Show_Exam_Result,Show_Text: false),
        SizedBox(height: 10,),
        Cardeducator(text1: TextManager.summon_guardian,text2: TextManager.Date,text3: TextManager.we_would_like,text4:TextManager.we_would_like,Show_Text: true),
        SizedBox(height: 50,),
      ],
    );
  }
}
