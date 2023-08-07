
import 'dart:async';
import 'package:educator/core/theme/theme.dart';
import 'package:educator/view/screens/Daily_Report/Daily_Report_Screen/Daily_Report_Screen.dart';
import 'package:educator/view/screens/Writing_Report/Writing_Report_Screen/Writing_Report_Screen.dart';
import 'package:educator/view/screens/archive/archive_screen/archive_screen.dart';
import 'package:educator/view/screens/login_screen/login_Screen_parent/login_screen_parent.dart';
import 'package:educator/view_model/Educator_Cubit/Educator_Cubit/Cubit.dart';
import 'package:educator/view_model/Educator_Cubit/Educator_States/Educator_States.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/color_manager/color_manager.dart';
void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{

  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (BuildContext context)=>Appcubit(),
      child: BlocConsumer<Appcubit,Appstates>(
          listener: (context,state){
      },
          builder: (context,state){
            print("reeeeeeeeeeeeeeeebuild");
            Appcubit appcubit = Appcubit.get(context);
            print(Appcubit.get(context).isdark);
            return   MaterialApp(
                debugShowCheckedModeBanner: false,
                darkTheme:ThemeData(
                  drawerTheme: DrawerThemeData(
                    backgroundColor: Colors.black,
                  ),

                  primarySwatch: Colors.blue,
                  scaffoldBackgroundColor: Colors.black,
                  appBarTheme: AppBarTheme(
                    systemOverlayStyle: SystemUiOverlayStyle(
                      statusBarColor: Colors.black,
                    ),
                    backgroundColor: Colors.black,
                    elevation: 0,
                    titleTextStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    iconTheme: IconThemeData(
                      color: Colors.black,
                    ),

                  ),
                  textTheme: TextTheme(
                    bodyText1: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),

                  bottomNavigationBarTheme: BottomNavigationBarThemeData(
                    type: BottomNavigationBarType.fixed,
                    selectedItemColor: Colors.blue,

                  ),
                  fontFamily: 'jannah',

                ),
                theme:ThemeData(
                  drawerTheme: DrawerThemeData(
                    backgroundColor: Colors.white,
                  ),

                  scaffoldBackgroundColor: Colors.white,
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
                themeMode:appcubit.isdark?ThemeMode.dark:
                ThemeMode.light,

                home: loginexamparentscreen() !
            );

          },

      ),
    );
  }
}