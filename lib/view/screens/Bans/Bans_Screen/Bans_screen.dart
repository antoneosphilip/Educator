import 'package:educator/view/core_widgets/app_bar_custom/appbar_custom.dart';
import 'package:educator/view/core_widgets/list_name/list_name.dart';
import 'package:educator/view/screens/Bans/Bans_Widget/Bans_Widget.dart';
import 'package:educator/view/screens/Drawer/Drawer_screen/Drawer_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class BansScreen extends StatefulWidget {
  @override
  State<BansScreen> createState() => _BansscreenSiewscreenState();
}
class _BansscreenSiewscreenState extends State<BansScreen> {
  // var selectcountry=TextEditingController();
  List<String> nameslist=[
    "ADAM (4)",
    "SALMA (0)",
    "NOHA (0)",
  ];
  List<String> prefernce=[
    "prefernce",
    "absert",
    "prefernce",
  ];
  var studentcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navbarparent(),
      appBar: customAppBar(context),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Names(namelist: nameslist,heigh: 60,),
            Container(
              width: double.infinity,
              height: 30,
              color: Colors.white,
              child: Names(namelist: prefernce,heigh: 40),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  FormBans()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
