import 'package:flutter/material.dart';
import 'package:flutter_web_test/src/constants/controllers.dart';
import 'package:flutter_web_test/src/constants/styles.dart';
import 'package:flutter_web_test/src/widgets/custom_text.dart';
import 'package:get/get.dart';

class HorizontalMenuItem extends StatelessWidget {
  final String? itemName;
  final VoidCallback? onTap;

  const HorizontalMenuItem({Key? key, this.itemName, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: onTap!,
      onHover: (value) {
        value
            ? menuController.onHover(itemName!)
            : menuController.onHover('not hovering');
      },
      child: Obx(() => Container(
            color: menuController.isHovering(itemName!)
                ? lightGrey.withOpacity(.1)
                : Colors.transparent,
            child: Row(
              children: [
                Visibility(
                    maintainSize: true,
                    maintainAnimation: true,
                    maintainState: true,
                    visible: menuController.isHovering(itemName!) ||
                        menuController.isActive(itemName!),
                    child: Container(
                      width: 6.0,
                      height: 40.0,
                      color: dark,
                    )),
                SizedBox(
                  width: _width / 88,
                ),

                Padding(padding: EdgeInsets.all(16.0) , child: menuController.returnIconFor(itemName!),),

                if(!menuController.isActive(itemName!))
                  Flexible(child: CustomText(text: itemName,color: menuController.isHovering(itemName!) ? dark : lightGrey,))
                else
                  Flexible(child: CustomText(text: itemName, color: dark, size: 18.0, fontWeight: FontWeight.bold,))
              ],
            ),
          )),
    );
  }
}
