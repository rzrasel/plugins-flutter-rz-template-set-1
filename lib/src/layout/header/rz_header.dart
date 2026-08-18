import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:responsive_builder_kit/responsive_builder_kit.dart';
import 'package:rz_library_utilities/rz_library_utilities.dart';
import 'package:rz_theme_set_1/rz_theme_set_1.dart';

class RzHeader extends StatelessWidget implements PreferredSizeWidget {
  const RzHeader({super.key, this.scaffoldKey});
  final GlobalKey<ScaffoldState>? scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: RzTheme.color.backgroundColor.fullWhite,
        border: Border(bottom: BorderSide(color: RzTheme.color.borderColor.gray, width: 1)),
      ),
      //padding: EdgeInsets.symmetric(horizontal: RzThemeProperty.size.md, vertical: RzThemeProperty.size.md),
      child: Container(
        height: getAppBarHeight(),
        color: Colors.yellow,
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: RzTheme.color.backgroundColor.fullWhite,
          surfaceTintColor: Colors.transparent,
          scrolledUnderElevation: 0,
          elevation: 0,
          shadowColor: Colors.transparent,
          /// Mobile menu icon
          //leading: !Responsive.isDesktop(context) ? IconButton(onPressed: ()=> scaffoldKey?.currentState?.openDrawer(), icon: Icon(Iconsax.menu)) : null,
          leading: _buildLeading(context),
          /// Search field
          title: Responsive.isDesktop(context) ? SizedBox(
            width: 400,
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.search_normal),
                hintText: "Search...",
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 0,
                ),
                //border: InputBorder.none,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.grey)
                ),
                isDense: true,
              ),
              style: const TextStyle(fontSize: 14.0),
            ),
          ) : null,
          /// Action
          actions: [
            if(!Responsive.isDesktop(context)) IconButton(onPressed: (){}, icon: Icon(Iconsax.search_normal)),
            IconButton(onPressed: (){}, icon: Icon(Iconsax.notification)),
            SizedBox(width: RzTheme.size.spaceBetweenItemGet / 2,),
            /// User data
            Row(
              children: [
                /// User image
                RoundedImage(
                  width: 40,
                  height: 40,
                  padding: 2,
                  imageType: ImageType.asset,
                  image: ImageString.assetImage.profileImage,
                ),
                SizedBox(width: RzTheme.size.smGet,),

                /// User name and email
                if(!Responsive.isMobile(context))
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Rz Rasel", style: Theme.of(context).textTheme.titleMedium,),
                    Text("support@rzrasel.com", style: Theme.of(context).textTheme.labelMedium,),
                  ],
                ),
                SizedBox(width: RzTheme.size.smGet,),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(getAppBarHeight());

  double getAppBarHeight() {
    final view = WidgetsBinding.instance.platformDispatcher.views.first;
    final logicalSize = view.physicalSize / view.devicePixelRatio;
    final width = logicalSize.width;

    //debugPrint("----$width----");

    // Mobile
    if (width < 650) {
      return 56.0;
    }
    // Tablet
    if (width < 900) {
      return 64.0;
    }
    // Desktop / Large screens
    return 64.0;
  }

  Widget? _buildLeading(BuildContext context) {
    // Desktop → no leading
    if (Responsive.isDesktop(context)) {
      return null;
    }

    // SAFE check (NO crash)
    final canPop = ModalRoute.of(context)?.canPop ?? false;

    // Show BACK button
    if (canPop) {
      return IconButton(
        icon: const BackButtonIcon(),
        onPressed: () {
          // Use GetX safe back
          if (Get.key.currentState?.canPop() ?? false) {
            Get.back();
          }
        },
      );
    }

    // Show MENU button
    return IconButton(
      icon: const Icon(Iconsax.menu),
      onPressed: () => scaffoldKey?.currentState?.openDrawer(),
    );
  }
}