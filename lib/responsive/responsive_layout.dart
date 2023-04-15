import 'package:flutter/material.dart';
import 'diemensions.dart';


class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;

  ResponsiveLayout({required this.desktopBody, required this.mobileBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mobileWith) {
          return mobileBody;
        } else {
          return desktopBody;
        }
      },
    );
  }
}
