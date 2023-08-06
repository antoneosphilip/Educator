
import 'package:educator/core/style_font_manager/style_font_manager.dart';
import 'package:educator/core/text_manager/text_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core_widgets/Card_item_Screen/Card_item_Screen.dart';
import '../../../core_widgets/definition_screen/definition_screen.dart';
import 'Alter_Dialog_Exam/Elter_Dialog_Exam.dart';

class FormExam extends StatelessWidget {
final String? text;

  const FormExam({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        definationscreen(text1: TextManager.Exam,text2: TextManager.Exam_2,ButtonExam: true),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 1,
            width: double.infinity,
            color: Colors.grey,
          ),
        ),
        Card(
          child: SizedBox( // <
            // --- SizedBox
              height: 392,
              width: 465,
              child: Container(
                color: Colors.white,
                width: 50,
                height: 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(

                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: (){
                              showDialog(context: context, builder: (context)=>AlertDialog(
                                title: AlterDialogExam(),
                              )
                              );
                            },
                            child: Row(
                              children: [
                                Text("${text}",style:getRegularStyle(color: Colors.black,fontSize: 16),),
                              ],
                            ),
                          ),
                          SizedBox(height: 13,),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                  ],
                ),
              )
          ),

        ),


      ],
    );
  }
}
