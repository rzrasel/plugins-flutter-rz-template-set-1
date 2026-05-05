import 'package:flutter/material.dart';

class RzTemplateTheme {
  RzTemplateTheme._();
  RzSize get size => RzSize.instance;
}

class RzSize {
  //const RzSize._();
  const RzSize._internal();
  static const RzSize instance = RzSize._internal();
  double get sm => 8.0;
  double get spaceBetweenItem => 16.0;
}