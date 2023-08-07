
import 'package:educator/core/style_font_manager/style_font_manager.dart';
import 'package:educator/core/text_manager/text_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core_widgets/Card_item_Screen/Card_item_Screen.dart';
import '../../../core_widgets/definition_screen/definition_screen.dart';

class FormRecordingAbsence extends StatelessWidget {
final String? date;
final String? text;

  const FormRecordingAbsence({ this.date, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child:Card(
            color: Colors.white,
            child: SizedBox( // <
              // --- SizedBox
                height: 155,
                width: 465,
                child: Container(
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
                            Abcense_Date(text: text,date: date,),
                            SizedBox(height: 20,),
                            Container(
                              height: 1,
                              width: double.infinity,
                              color: Colors.grey,
                            ),
                            SizedBox(height: 20,),
                            Abcense_Date(text: TextManager.Occasional,date: date,),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
            ),

          ),

        ),

      ],
    );
  }
}
class Abcense_Date extends StatelessWidget {
final String?text;
final String?date;
  const Abcense_Date({ this.text, this.date, });@override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Center(child: Text("${date}",style: getRegularStyle(color: Colors.black,fontSize: 18)),),
        SizedBox(width: 15,),
        Container(
            width: 108,
            height: 40,
            color: Color(0xffD6EBFF),
            child: Center(child: Text("${text}",style:getRegularStyle(color: Colors.black,fontSize: 18) ,))),
      ],
    );
  }
}
