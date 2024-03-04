import 'package:flutter/material.dart';
import 'package:tinder_app_ui/screens/after_signup_screens/root_page.dart';
import 'package:tinder_app_ui/screens/before_signup_screens/add_photos.dart';
import 'package:tinder_app_ui/screens/before_signup_screens/choose_gender.dart';
import 'package:tinder_app_ui/screens/before_signup_screens/choose_interests.dart';
import 'package:tinder_app_ui/screens/before_signup_screens/enter_birthday.dart';
import 'package:tinder_app_ui/screens/before_signup_screens/enter_name.dart';
import 'package:tinder_app_ui/screens/before_signup_screens/enter_phone_number.dart';
import 'package:tinder_app_ui/screens/before_signup_screens/oops_screen.dart';
import 'package:tinder_app_ui/screens/before_signup_screens/otp_verification.dart';
import 'package:tinder_app_ui/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: MyApp2()),
    );
  }
}

class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyScreen(
              title: 'Home Screen',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RootPage()));
              }),
          MyScreen(
              title: 'Splash Screen',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Splash_Screen()));
              }),
          MyScreen(
              title: 'OOPs Screen',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OOPS_Screen()));
              }),
          MyScreen(
              title: 'Enter Phone Number',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EnterPhoneNumber()));
              }),
          MyScreen(
              title: 'OTP Verification',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => OTP_Verification()));
              }),
          MyScreen(
              title: 'Name',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Enter_Name()));
              }),
          MyScreen(
              title: 'birthday',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Enter_Birthday()));
              }),
          MyScreen(
              title: 'Choose Gender',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Choose_Gender()));
              }),
          MyScreen(
              title: 'Choose Interest',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChooseInterests()));
              }),
          MyScreen(
              title: 'Add Photos',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Add_Photos()));
              }),
        ],
      ),
    );
  }
}

class MyScreen extends StatelessWidget {
  var title, onTap;

  MyScreen({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(
          bottom: 10,
        ),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(50),
        ),
        height: 75,
        width: 250,
        child: Center(
          child: Text(
            title.toString(),
            style: TextStyle(
              fontSize: 28,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
