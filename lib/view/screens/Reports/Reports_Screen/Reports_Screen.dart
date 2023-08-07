import 'package:educator/view/core_widgets/app_bar_custom/appbar_custom.dart';
import 'package:educator/view/core_widgets/list_name/list_name.dart';
import 'package:educator/view/screens/Reports/Reports_Widget/Reports_Widget.dart';
import 'package:educator/view/screens/Drawer/Drawer_screen/Drawer_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ReportsScreen extends StatefulWidget {
  @override
  State<ReportsScreen> createState() => _ReportsscreenSiewscreenState();
}
class _ReportsscreenSiewscreenState extends State<ReportsScreen> {
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
              child: Names(namelist: prefernce,),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  FormReports()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
