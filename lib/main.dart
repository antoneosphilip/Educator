
import 'dart:async';
import 'package:educator/core/theme/theme.dart';
import 'package:educator/view/screens/login_screen/login_Screen_parent/login_screen_parent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/color_manager/color_manager.dart';
void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,

        theme:ThemeData(

          appBarTheme: AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle(

              statusBarColor: Colors.white,
            ),
            backgroundColor:ColorManager.colorPrimary,
            elevation: 0,
            titleTextStyle: TextStyle(

                fontSize: 50,
                fontWeight: FontWeight.bold,
                height: 3
            ),
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
          ),
          useMaterial3: true,
        ),
    //    darkTheme:darktheme ,
        home: loginexamparentscreen() !
    );
  }
}