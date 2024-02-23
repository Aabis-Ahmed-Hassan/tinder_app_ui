import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tinder_app_ui/constants/app_icon.dart';
import 'package:tinder_app_ui/screens/oops_screen.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => OOPS_Screen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFF4457),
        body: Center(
          child: Icon(
            AppIcon.appIcon,
            color: Colors.white,
            size: 170,
          ),
        ));
  }
}
