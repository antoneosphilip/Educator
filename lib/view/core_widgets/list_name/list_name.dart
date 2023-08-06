import 'package:flutter/cupertino.dart';

class Names extends StatelessWidget {
  final double? heigh;
  final List? namelist;
  const Names({this.heigh=60, this.namelist});
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: heigh,
      width: double.infinity,
      child: ListView.separated(
          physics: BouncingScrollPhysics(),
          itemBuilder: (context,index)=>Names(namelist: [namelist],),
          separatorBuilder: (context,index)=>SizedBox(width: 30,),
          scrollDirection: Axis.horizontal,
          itemCount: namelist!.length
      ),
    );
    ;
  }
}
