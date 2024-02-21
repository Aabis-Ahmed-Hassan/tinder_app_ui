import 'package:flutter/material.dart';
import 'package:tinder_app_ui/constants/app_colors.dart';

class MyButton extends StatelessWidget {
  String title;
  var onTap;
  double widthInMediaQuery;
  MyButton(
      {super.key,
      required this.title,
      required this.onTap,
      this.widthInMediaQuery = 0.7});

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
            boxShadow: [
              BoxShadow(
                  color: Color(0xffE6E6E6), blurRadius: 10, spreadRadius: 5)
            ],
            gradient: LinearGradient(
              colors: [
                AppColors.defaultColorRed,
                AppColors.defaultColorOrange,
              ],
            ),
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: Color(0xffFFFFFF),
                fontFamily: 'Inter',
                fontSize: 18.14,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ));
  }
}
