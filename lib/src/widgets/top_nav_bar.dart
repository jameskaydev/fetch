
import 'package:flutter/material.dart';
import 'package:flutter_web_test/src/helpers/responsiveness.dart';

AppBar topNavigationAppBar(BuildContext context , GlobalKey<ScaffoldState> key) =>

  AppBar(
    elevation: 0.0,
    leading: !ResponsiveWidget.isSmallScreen(context) ? 
    Row(children: [
      Container(
        padding: EdgeInsets.only(left: 14.0),
        child: Image.asset("assets/icons/logo.png" , width: 28.0,),
      )
    ],) : IconButton(onPressed: (){
      key.currentState!.openDrawer();
    }, icon: Icon(Icons.menu)) ,
  );

  //TODO: why we use Entire Value ?
  //! We use GlobalKey for Open Drawer & ... in there
  //? and also using BuildContext context for to know where which widget we are going to build this App appBar   