import 'package:flutter_web_test/src/controllers/menu_controller.dart';
import 'package:flutter_web_test/src/controllers/navigation_controller.dart';

//access to this controller every where
//Then we must Register our Controller into the main method for runApp
MenuController menuController = MenuController.instance;

NavigationController navigationController = NavigationController.instance; //access to Get.put() with this mentioned