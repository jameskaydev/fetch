import 'package:flutter/material.dart';
import 'package:flutter_web_test/src/constants/controllers.dart';
import 'package:flutter_web_test/src/constants/styles.dart';
import 'package:flutter_web_test/src/widgets/custom_text.dart';
import 'package:get/get.dart';

class VerticalMenuItem extends StatelessWidget {
  final String? itemName;
  final VoidCallback? onTap;

  const VerticalMenuItem({Key? key, this.itemName, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onHover: (value) {
        value
            ? menuController.onHover(itemName!)
            : menuController.onHover('on hovering');
      },
      child: Obx(() => Container(
            color: menuController.isHovering(itemName!)
                ? lightGrey.withOpacity(.1)
                : Colors.transparent,
            child: Row(
              children: [
                Visibility(
                    visible: menuController.isHovering(itemName!) ||
                        menuController.isActive(itemName!),
                    maintainState: true,
                    maintainAnimation: true,
                    maintainSize: true,
                    child: Container(
                      width: 3.0,
                      height: 7.0,
                      color: Colors.white,
                    )),
                Expanded(
                    child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: menuController.returnIconFor(itemName!),
                      ),
                      if (!menuController.isActive(itemName!))
                        Flexible(
                            child: CustomText(
                          text: itemName,
                          color: menuController.isHovering(itemName!)
                              ? Colors.white
                              : lightGrey,
                        ))
                      else
                        Flexible(
                            child: CustomText(
                          text: itemName,
                          color: Colors.white,
                          size: 18.0,
                          fontWeight: FontWeight.bold,
                        ))
                    ],
                  ),
                ))
              ],
            ),
          )),
    );
  }
}
