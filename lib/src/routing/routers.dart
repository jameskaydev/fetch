import 'package:flutter/material.dart';
import 'package:flutter_web_test/src/pages/clients/clients.dart';
import 'package:flutter_web_test/src/pages/drivers/drivers.dart';
import 'package:flutter_web_test/src/pages/over_view/overview.dart';
import 'package:flutter_web_test/src/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings){
  switch(settings.name){
    case OverViewPageRoute:
      return _getPageRoute(OverViewPage());
    case DriversPageRoute:
      return _getPageRoute(DriverPage());
    case ClientPageRoute:
      return _getPageRoute(ClientPage());
    default:
      return _getPageRoute(OverViewPage());

  }
}


PageRoute _getPageRoute(Widget child){
  return MaterialPageRoute(builder: (context)=> child );
}