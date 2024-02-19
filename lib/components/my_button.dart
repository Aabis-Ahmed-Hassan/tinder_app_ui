import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  String title;
  var onPress;
  MyButton({super.key, required this.title, required this.onPress});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return Container(
      height: height * 0.05,
      child: Center(
          // child: Text(),
          ),
    );
  }
}
