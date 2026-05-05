import 'package:flutter/material.dart';
import 'package:rz_template_set_1/src/model/rz_template_model.dart';
import 'package:rz_template_set_1/src/screen/rz_desktop_layout.dart';
import 'package:rz_template_set_1/src/screen/rz_mobile_layout.dart';
import 'package:rz_template_set_1/src/screen/rz_tablet_layout.dart';
import 'package:rz_template_set_1/src/template/rz_responsive_design.dart';

class RzTemplate extends StatelessWidget {
  //const RzTemplate({super.key, required this.sidebar, this.desktop, this.tablet, this.mobile, this.templateModel = RzTemplateModel(sidebar: sidebar),});
  RzTemplate({
    super.key,
    //this.topbar,
    this.topbarBuilder,
    required this.sidebar,
    this.desktop,
    this.tablet,
    this.mobile,
    RzTemplateModel? templateModel,
  }) : templateModel =
           templateModel ??
           RzTemplateModel(
             //topbar: topbar,
             topbarBuilder: topbarBuilder,
             sidebar: sidebar,
             desktop: desktop,
             tablet: tablet,
             mobile: mobile,
           );

  final RzTopbarBuilder? topbarBuilder;
  //final PreferredSizeWidget? topbar;
  final Widget sidebar;
  final Widget? desktop;
  final Widget? tablet;
  final Widget? mobile;
  final RzTemplateModel templateModel;

  @override
  Widget build(BuildContext context) {
    //Widget? desktopLayout = templateModel.desktop ?? desktop ?? Container();
    Widget? desktopLayout = templateModel.desktop ?? desktop;
    Widget? tabletLayout = templateModel.tablet ?? tablet;
    Widget? mobileLayout = templateModel.mobile ?? mobile;

    return Scaffold(
      body: RzResponsiveWidget(
        desktop: templateModel.useLayout
            ? RzDesktopLayout(body: desktopLayout, templateModel: templateModel,)
            : desktopLayout ?? Container(),
        tablet: templateModel.useLayout
            ? RzTabletLayout(body: tabletLayout ?? desktopLayout, templateModel: templateModel,)
            : tabletLayout ?? Container(),
        mobile: templateModel.useLayout
            ? RzMobileLayout(body: mobileLayout ?? desktopLayout, templateModel: templateModel,)
            : mobileLayout ?? Container(),
      ),
    );
  }
}
