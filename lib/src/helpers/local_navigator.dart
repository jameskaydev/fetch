import 'package:flutter/material.dart';
import 'package:flutter_web_test/src/constants/controllers.dart';
import 'package:flutter_web_test/src/routing/routers.dart';

Navigator localNavigator() => Navigator(
  key: navigationController.navigatorKey,
  initialRoute: 'OverViewPageRoute',
  onGenerateRoute: generateRoute,
);