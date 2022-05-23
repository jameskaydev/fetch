
import 'package:flutter/material.dart';

AppBar topNavigationAppBar(BuildContext context , GlobalKey<ScaffoldState> key) =>

  AppBar(
    elevation: 0.0,
    backgroundColor:Colors.white,
    title: const Text('<< Flutter Web Panel >>' , style: TextStyle(color: Colors.black),),
    centerTitle: true,
  );

  //TODO: why we use Entire Value ?
  //! We use GlobalKey for Open Drawer & ... in there
  //? and also using BuildContext context for to know where which widget we are going to build this App appBar   