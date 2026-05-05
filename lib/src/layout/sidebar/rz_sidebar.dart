import 'package:flutter/material.dart';
import 'package:rz_advance_widget/rz_advance_widget.dart';
import 'package:rz_theme_set_1/rz_theme_set_1.dart';

class RzSidebar extends StatelessWidget {
  const RzSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: BeveledRectangleBorder(),
      child: Container(
        decoration: BoxDecoration(
          color: RzTheme.color.backgroundColor.fullWhite,
          border: Border(right: BorderSide(color: RzTheme.color.borderColor.gray, width: 1)),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: RzTheme.size.smGet),
              /// Image
              RzCircularImage(
                width: 100,
                height: 100,
                padding: 2,
                imageType: RzImageType.asset,
                image: ImageString.assetImage.profileImage,
                backgroundColor: Colors.transparent,
              ),
              SizedBox(height: RzTheme.size.spaceBetweenItemGet),
              Padding(
                padding: EdgeInsets.all(RzTheme.size.mdGet),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Menu", style: Theme.of(context).textTheme.bodySmall!.apply(letterSpacingDelta: 1.2),),
                    /// Menu Items
                    //RzMenuItem(itemName: "Home", icon: Iconsax.home, route: RzAppRoute.home,),
                    //RzMenuItem(itemName: "Login", icon: Iconsax.login, route: RzAppRoute.login,),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
