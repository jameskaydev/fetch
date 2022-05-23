import 'package:flutter/material.dart';
import 'package:flutter_web_test/src/helpers/responsiveness.dart';
import 'package:flutter_web_test/src/widgets/large_screen.dart';
import 'package:flutter_web_test/src/widgets/small_screen.dart';
import 'package:flutter_web_test/src/widgets/top_nav_bar.dart';

class SiteLayout extends StatelessWidget {

  final GlobalKey<ScaffoldState> globalKey = GlobalKey();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topNavigationAppBar(context, globalKey), 
      body: ResponsiveWidget(largeScreen: LargeScreen(),smallScreen: SmallScreen(),),
    );
  }
}