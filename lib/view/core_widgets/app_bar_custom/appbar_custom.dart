import 'package:flutter/material.dart';

import '../../../core/assets_manager/assets_manager.dart';

  PreferredSizeWidget customAppBar (BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(70.0),
      child: AppBar(
        actions: [
          Align(
            child: ImageIcon( AssetImage( AssetsManager.welcome,
            ),color: Colors.white,size: 40,
            ),
            alignment: Alignment.bottomCenter,)
        ],
        leading: Align(
          child: Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Builder(
                builder: (context) {
                  return IconButton(onPressed: (){
                    Scaffold.of(context).openDrawer();
                  }, icon: Icon(Icons.menu,color: Colors.white,size: 50,));
                }
            ),
          ),alignment: Alignment.center,


        ),

      ),
    );

}
