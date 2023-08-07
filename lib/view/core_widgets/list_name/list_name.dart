import 'package:educator/core/color_manager/color_manager.dart';
import 'package:educator/core/style_font_manager/style_font_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
int currentindex=0;
class Names extends StatelessWidget {
  final double? heigh;
  final List? namelist;
  const Names({this.heigh=60, this.namelist});
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: heigh,
      width: double.infinity,
      child:ListView.separated(
        scrollDirection:Axis.horizontal,
        separatorBuilder: (context,index)=>SizedBox(width: 20,),
        itemCount: namelist!.length,
        itemBuilder: (context , index) {
          return Name_Item(name: namelist![index],index: index,);

        }
      ),

    );
    ;
  }
}
class Name_Item extends StatefulWidget {
  final String name;
  final int index;

  Name_Item({super.key, required this.name, required this.index});

  @override
  State<Name_Item> createState() => _Name_ItemState();
}

class _Name_ItemState extends State<Name_Item> {
  @override
  Widget build(BuildContext context) {
    return  Row(
        children: [
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Expanded(
                child: TextButton(onPressed: (){
                  setState(() {
                    
                    currentindex=widget.index;

                  });
                }, child: Text("${widget.name}",style:getBoldStyle(fontSize:17,color: currentindex==widget.index?ColorManager.colorPrimary:Color(0xff676767)),)),
              ),
            ),
          ),


        ],
      );
  }
}



