import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/color_manager/color_manager.dart';
import '../../../core/style_font_manager/style_font_manager.dart';
import '../../../core/text_manager/text_manager.dart';

class definationscreen extends StatelessWidget {
  final String? text1;
  final String? text2;
  final bool? ButtonExam;
  const definationscreen({ this.text1, this.text2,this.ButtonExam});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Text("${text1}",style: getRegularStyle(color: ColorManager.colorPrimary,
                      ))),
               Align(
                  alignment: Alignment.topLeft,
                  child: Text("${text2}",style: getRegularStyle(color: Colors.grey,fontSize: 15),)),
            ],
          ),
        ),
        if(ButtonExam==true)
        Container(
            decoration: BoxDecoration(
                color: ColorManager.colorPrimary,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: ColorManager.colorPrimary,
                )
            )
            ,
            width: 100,
            height: 60,
            child: TextButton(onPressed: (){

            },
                child: Text(TextManager.Exam,style: getRegularStyle(color: Colors.white,fontSize: 15),),
            )
        ),
      ],
    );
  }
}

