import 'package:flutter/material.dart';
import 'package:responsive_builder_kit/responsive_builder_kit.dart';

class RzResponsiveWidget extends StatelessWidget {
  const RzResponsiveWidget({super.key, required this.desktop, required this.tablet, required this.mobile});

  final Widget desktop;
  final Widget tablet;
  final Widget mobile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (_, constraints) {
          if(Responsive.isDesktop(context)) {
            return desktop;
          } else if(Responsive.isTablet(context)) {
            return tablet;
          } else if(Responsive.isMobile(context)) {
            return mobile;
          } else {
            //return const Center(child: Text("Other design"),);
            return mobile;
          }
        },
      ),
    );
  }
}

