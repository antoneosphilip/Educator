import 'package:flutter/cupertino.dart';

class AlterDialogExam extends StatelessWidget {
  const AlterDialogExam({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text("date",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: Color(0xff4E6ABB)),),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text("ex",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: Color(0xff4E6ABB)),),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text("Full mark",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: Color(0xff4E6ABB)),),
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text("St.mark",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: Color(0xff4E6ABB)),),
              ),
            ),


          ],
        ),
        Row(
          children: [

            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text("16,june",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700,color: Color(0xff545454)),),
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text("Arabic Exam",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700,color: Color(0xff545454)),),
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text("20",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700,color: Color(0xff545454)),),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text("19",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700,color: Color(0xff545454)),),
              ),
            ),


          ],
        ),

      ],
    );
  }
}
