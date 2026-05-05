import 'package:flutter/material.dart';
import 'package:rz_template_set_1/rz_template_set_1.dart';

class GetTemplateBody {
  static Widget? buildBody(RzTemplateModel templateModel, Widget? body) {
    Widget? bodyLayout = templateModel.desktop ?? body;
    return templateModel.useScrollView
        ? Container(child: SingleChildScrollView(child: bodyLayout))
        : bodyLayout;
  }
}