import 'package:flutter/material.dart';
import 'package:rz_template_set_1/rz_template_set_1.dart';
import 'package:rz_template_set_1/src/layout/sidebar/rz_sidebar.dart';

class RzMobileLayout extends StatelessWidget {
  RzMobileLayout({super.key, this.body, required this.templateModel});

  final Widget? body;
  final RzTemplateModel templateModel;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      //drawer: RzSidebar(),
      drawer: templateModel.sidebar,
      appBar:
          templateModel.buildTopbar(scaffoldKey) ??
          RzHeader(scaffoldKey: scaffoldKey),
      body: buildBody(templateModel, body) ?? const SizedBox(),
    );
  }

  Widget? buildBody(RzTemplateModel templateModel, Widget? body) {
    Widget? bodyLayout = templateModel.mobile ?? body;
    return templateModel.useScrollView
        ? SingleChildScrollView(child: bodyLayout)
        : bodyLayout;
  }
}
