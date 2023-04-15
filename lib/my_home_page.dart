import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:responsivedesign/responsive/desktop_body.dart';
import 'package:responsivedesign/responsive/mobile_body.dart';
import 'package:responsivedesign/responsive/responsive_layout.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
          desktopBody: const MyDesktopBody(), mobileBody: const MyMobileBody()),
    );
  }
}
