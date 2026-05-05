import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:rz_template_set_1/src/layout/sidebar/rz_sidebar_controller.dart';
import 'package:rz_theme_set_1/rz_theme_set_1.dart';

class RzMenuItem extends StatelessWidget {
  const RzMenuItem({
    super.key,
    required this.itemName,
    required this.icon,
    required this.route,
  });

  final String itemName;
  final IconData icon;
  final String route;

  @override
  Widget build(BuildContext context) {
    final menuController = Get.put(RzSidebarController());

    return InkWell(
      onTap: () => menuController.onTapMenu(route),
      onHover: (hovering) => hovering ? menuController.changeHoverItem(route) : menuController.changeHoverItem(""),
      child: Obx(
        ()=> Padding(
          padding: EdgeInsets.symmetric(vertical: RzTheme.size.sxsGet),
          child: Container(
            decoration: BoxDecoration(
              color: (menuController.isHovering(route) || menuController.isActive(route)) ? RzTheme.color.theme.primary : Colors.transparent,
              borderRadius: BorderRadius.circular(RzTheme.size.cardRadiusMdGet),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /// Icon
                Padding(
                  padding: EdgeInsets.only(
                    top: RzTheme.size.smGet,
                    right: RzTheme.size.smGet,
                    bottom: RzTheme.size.smGet,
                    left: RzTheme.size.mdGet,
                  ),
                  child: menuController.isActive(route) ? Icon(icon, size: 22, color: RzTheme.color.backgroundColor.fullWhite,) : Icon(icon, size: 22, color: menuController.isHovering(route) ? RzTheme.color.backgroundColor.fullWhite : RzTheme.color.backgroundColor.arcticBlack,),
                ),
                /// Text
                if(menuController.isHovering(route) || menuController.isActive(route))
                  Flexible(child: Text(itemName, style: Theme.of(context).textTheme.bodyMedium!.apply(color: RzTheme.color.textColor.fullWhite),))
                else
                  Flexible(child: Text(itemName, style: Theme.of(context).textTheme.bodyMedium!.apply(color: RzTheme.color.textColor.arcticBlack),))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
