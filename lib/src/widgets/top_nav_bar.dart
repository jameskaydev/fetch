import 'package:flutter/material.dart';
import 'package:flutter_web_test/src/constants/styles.dart';
import 'package:flutter_web_test/src/helpers/responsiveness.dart';

import 'custom_text.dart';

AppBar topNavigationAppBar(
        BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      elevation: 0.0,
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 14.0),
                  child: Image.asset(
                    "assets/icons/logo.png",
                    width: 28.0,
                  ),
                )
              ],
            )
          : IconButton(
              onPressed: () {
                key.currentState!.openDrawer();
              },
              icon: Icon(Icons.menu)),
      title: Row(
        children: [
          Visibility(
              child: CustomText(
            text: 'Dash',
            color: lightGrey,
            size: 20.0,
            fontWeight: FontWeight.bold,
          )),
          Expanded(child: Container()),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: dark.withOpacity(.7),
              )),
          
          Stack(
            //! I use Stack Widget for Notification Icon with Badge of this
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.notifications , color: dark.withOpacity(.7),)),
              Positioned(
                top: 7,
                right: 7,
                child: Container(
                  width: 12.0,
                  height: 12.0,
                  padding: EdgeInsets.all(14.0),
                  decoration: BoxDecoration(
                      color: active,
                      borderRadius: BorderRadius.circular(30.0),
                      border: Border.all(color: light , width: 2.0)),
                ) ,)
            ],
          ),

          Container(
            width: 1.0,
            height: 22,
            color: lightGrey,
          ),

          SizedBox(
            width: 24.0,
          ),

          CustomText(text: 'Cristiano Ronaldo', color: lightGrey,),

          SizedBox(width: 16.0,),

          Container(
            decoration: BoxDecoration(
              color: Colors.white ,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Container(
              padding: EdgeInsets.all(2.0),
              margin: EdgeInsets.all(2.0),
              child: CircleAvatar(child: Icon(Icons.person_outline , color: dark,), backgroundColor: light,),
            ),
          )
        ],
      ),
      iconTheme: IconThemeData(color: dark),
      backgroundColor: Colors.transparent,
    );

//TODO: why we use Entire Value ?
//! We use GlobalKey for Open Drawer & ... in there
//? and also using BuildContext context for to know where which widget we are going to build this App appBar
