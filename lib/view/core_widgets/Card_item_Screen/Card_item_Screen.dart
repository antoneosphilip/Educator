import 'package:educator/view/screens/Exam/Exam_Widget/Exam_Widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/color_manager/color_manager.dart';
import '../../../core/style_font_manager/style_font_manager.dart';
import '../../screens/Exam/Exam_Widget/Alter_Dialog_Exam/Elter_Dialog_Exam.dart';

class Cardeducator extends StatelessWidget {
  final String? text1;
  final String? text2;
  final String? text3;
  final String? text4;
  final bool? Show_Text;

  const Cardeducator({ this.text1, this.text2,this.text3,this.text4,this.Show_Text});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        showDialog
          (
          context: context, builder: (context)=> AlertDialog(
          title: Show_Text!?Text('${text4
          }'):AlterDialogExam()
        ),
        );
      },
      child: Card(
        color: Colors.white,
        child: SizedBox( // <
          // --- SizedBox
            height: 130,
            width: 400,
            child: Container(
              width: 50,
              height: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Text("${text1}",style:getRegularStyle(color: ColorManager.colorPrimary,fontSize: 15),),
                        Spacer(),
                        Text("${text2}",style: getRegularStyle(color: ColorManager.colorblack,fontSize: 15),),

                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("${text3}",maxLines:1,overflow: TextOverflow.ellipsis,style: getRegularStyle(color:ColorManager.colorblack,fontSize: 15),),
                  )
                ],
              ),
            )
        ),

      ),
    );
  }
}
