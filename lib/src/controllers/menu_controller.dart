import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_web_test/src/constants/styles.dart';
import 'package:flutter_web_test/src/routing/routes.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  //! access to MEnuController for using in every where
  static MenuController instance = Get.find();

  //Default Value
  var activeItem = OverViewPageRoute.obs;
  var hoverItem = "".obs;

  //Change Value ItemName
  changeActiveItemTo(String itemName){
    activeItem.value = itemName;
  }
  onHover(String itemName){
    if(!isActive(itemName)) hoverItem.value = itemName;
  }

  //Check for Activation Item
  isActive(String itemName) => activeItem.value == itemName;
  isHovering(String itemName) => hoverItem.value == itemName;


  //Create Two Method For ChangeThem of Active Item Selected
  Widget returnIconFor(String itemName){
    switch(itemName){
      case OverViewPageRoute :
        return _customIcon(Icons.trending_up, itemName);
      case DriversPageRoute:
        return _customIcon(Icons.drive_eta_rounded, itemName);
      case ClientPageRoute:
        return _customIcon(Icons.people_alt_outlined, itemName);
      case AuthenticationPageRoute:
        return _customIcon(Icons.exit_to_app, itemName);
      default:
        return _customIcon(Icons.exit_to_app, itemName);
    }
  }

  Widget _customIcon(IconData icon , String ItemName){
    if(isActive(ItemName)) return Icon(icon , size: 22.0, color: dark,);

    return Icon(icon , color: isHovering(ItemName) ? dark : lightGrey,);
  }

}