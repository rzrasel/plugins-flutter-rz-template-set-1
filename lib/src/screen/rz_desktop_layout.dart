import 'package:flutter/material.dart';
import 'package:rz_template_set_1/rz_template_set_1.dart';
import 'package:rz_template_set_1/src/layout/sidebar/rz_sidebar.dart';

class RzDesktopLayout extends StatelessWidget {
  RzDesktopLayout({super.key, this.body, required this.templateModel});

  final Widget? body;
  final RzTemplateModel templateModel;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Row(
        children: [
          //const Expanded(child: RzSidebar()),
          Expanded(child: templateModel.sidebar),
          Expanded(
            flex: 5,
            child: Column(
              children: [
                /// Header
                templateModel.buildTopbar(scaffoldKey) ??
                    RzHeader(scaffoldKey: scaffoldKey),

                /// Body
                Expanded(
                  child: buildBody(templateModel, body) ?? const SizedBox(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget? buildBody(RzTemplateModel templateModel, Widget? body) {
    Widget? bodyLayout = templateModel.desktop ?? body;
    return templateModel.useScrollView
        ? SingleChildScrollView(child: bodyLayout)
        : bodyLayout;
  }
}
