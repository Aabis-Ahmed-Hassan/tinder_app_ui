import 'package:flutter/material.dart';
import 'package:tinder_app_ui/constants/app_colors.dart';
import 'package:tinder_app_ui/screens/before_signup_screens/account_recovery.dart';

import '../../components/app_icon.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.defaultColorRed,
            AppColors.defaultColorOrange,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.06,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppIcon(
                    imageAddress: 'assets/images/app_icon_white_color.png',
                  ),
                  SizedBox(
                    width: width * 0.0075,
                  ),
                  //as the tinder text in this screen is in white color and we don't have white picture, so we're using text widget
                  Text(
                    'tinder',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 35,
                      fontFamily: 'Inter',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Container(
                width: width * 0.4,
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Inter',
                        fontSize: 30,
                      ),
                      children: [
                        TextSpan(
                          text: 'It Starts ',
                        ),
                        TextSpan(
                          text: 'with a ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: 'Swipe',
                        ),
                        TextSpan(text: '™')
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.25,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontFamily: 'Inter',
                    fontSize: 17,
                  ),
                  children: [
                    TextSpan(
                      text: 'By clicking Log In, you agree with our ',
                    ),
                    TextSpan(
                      text: 'Terms.',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: ' Learn how we process your data in our ',
                    ),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: ' and ',
                    ),
                    TextSpan(
                      text: 'Cookies Policy',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: '.',
                    ),
                  ],
                ),
              ),
              Spacer(),
              MyLoginMethod(
                title: 'LOGIN WITH GOOGLE',
                imageAddress: 'assets/images/google.png',
              ),
              MyLoginMethod(
                title: 'LOGIN WITH FACEBOOK',
                imageAddress: 'assets/images/facebook.png',
              ),
              MyLoginMethod(
                title: 'LOGIN WITH PHONE',
                imageAddress: 'assets/images/facebook.png',
              ),
              SizedBox(
                height: height * 0.03,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AccountRecovery(),
                    ),
                  );
                },
                child: Text(
                  'Trouble logging in?',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontFamily: 'Inter',
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyLoginMethod extends StatelessWidget {
  String title, imageAddress;
  MyLoginMethod({
    super.key,
    required this.title,
    required this.imageAddress,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return Container(
      height: height * 0.07,
      margin: EdgeInsets.only(bottom: height * 0.018),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.05,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              radius: width * 0.0375,
              backgroundImage: AssetImage(
                imageAddress,
              ),
            ),
            Text(
              title,
              style: TextStyle(
                fontFamily: 'Inter',
                color: Colors.black,
                fontSize: 21,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
