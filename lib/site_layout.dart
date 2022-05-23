import 'package:flutter/material.dart';
import 'package:flutter_web_test/src/helpers/responsiveness.dart';
import 'package:flutter_web_test/src/widgets/large_screen.dart';
import 'package:flutter_web_test/src/widgets/small_screen.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: const Text('<< Flutter Web Panel >>' , style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: ResponsiveWidget(largeScreen: LargeScreen(),smallScreen: SmallScreen(),),
    );
  }
}