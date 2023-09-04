import 'package:flowers/layout_builder.dart';
import 'package:flowers/my_desktop_body.dart';
import 'package:flowers/my_mobile_body.dart';
import 'package:flowers/my_tablet_body.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'More Flowers',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  LayoutBuilderResp(
      mobileScreenLayout: MyMobileBody(),
      tabletScreenLayout: MyDesktopBody(),
      webScreenLayout: MyTabletBody(),
    );
  }
}
