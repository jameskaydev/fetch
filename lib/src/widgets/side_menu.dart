import 'package:flutter/material.dart';
import 'package:flutter_web_test/src/constants/controllers.dart';
import 'package:flutter_web_test/src/helpers/responsiveness.dart';
import 'package:flutter_web_test/src/routing/routes.dart';
import 'package:flutter_web_test/src/widgets/custom_text.dart';
import 'package:flutter_web_test/src/widgets/side_menu_item.dart';
import 'package:get/get.dart';

import '../constants/styles.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Container(
      color: light,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 40.0,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: _width / 48,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: Image.asset('assets/icons/logo.png'),
                    ),
                    Flexible(
                        child: CustomText(
                      text: 'Dash',
                      size: 20.0,
                      fontWeight: FontWeight.bold,
                      color: active,
                    )),
                    SizedBox(
                      width: _width / 48,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30.0,
                ),
              ],
            ),
          Divider(
            color: lightGrey.withOpacity(.1),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: side_menu_items
                .map((itemName) => SideMenuItem(
                      itemName: itemName == AuthenticationPageRoute
                          ? 'Log Out'
                          : itemName,
                      onTap: () {
                        if (itemName == AuthenticationPageRoute) {
                          //TODO: go to authentication page
                        }

                        if (!menuController.isActive(itemName)) {
                          menuController.changeActiveItemTo(itemName);
                          if (ResponsiveWidget.isSmallScreen(context))
                            Get.back();
                          //TODO: go to item name Route
                          navigationController.navigateTo(itemName);
                        }
                      },
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
