import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  double heightInMQ;
  String imageAddress;
  AppIcon({
    super.key,
    this.heightInMQ = 0.0375,
    this.imageAddress = 'assets/icons/home_icon_colored.png',
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    return Image(
      height: height * heightInMQ,
      image: AssetImage(imageAddress),
    );
  }
}
