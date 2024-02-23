import 'package:flutter/material.dart';
import 'package:tinder_app_ui/constants/app_colors.dart';

class MyButton extends StatelessWidget {
  String title;
  var onTap;
  bool showGradient;
  bool showBoxShadow;
  double widthInMediaQuery;
  MyButton(
      {super.key,
      required this.title,
      required this.onTap,
      this.widthInMediaQuery = 0.7,
      this.showGradient = true,
      this.showBoxShadow = true});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return InkWell(
        onTap: onTap,
        child: Container(
          height: height * 0.055,
          width: width * widthInMediaQuery,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            boxShadow: showBoxShadow
                ? [
                    BoxShadow(
                        color: Color(0xffE6E6E6),
                        blurRadius: 10,
                        spreadRadius: 5)
                  ]
                : null,
            gradient: showGradient
                ? LinearGradient(
                    colors: [
                      AppColors.defaultColorRed,
                      AppColors.defaultColorOrange,
                    ],
                  )
                : null,
            color: showGradient ? null : Color(0xffEBECEF),
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: showGradient ? Color(0xffFFFFFF) : Color(0xff828491),
                fontFamily: 'Inter',
                fontSize: 18.14,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ));
  }
}
