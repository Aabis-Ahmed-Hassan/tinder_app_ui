import 'package:flutter/material.dart';
import 'package:tinder_app_ui/screens/after_login_screens/bottom_nav_bar_screens/1_home_screen/home_screen.dart';
import 'package:tinder_app_ui/screens/before_login_screens/login_screen.dart';
import 'package:tinder_app_ui/screens/before_signup_screens/enter_phone_number.dart';

class UselessScreen extends StatelessWidget {
  const UselessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20,),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            UselessContainer(
              title: 'Home',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
            ),
            UselessContainer(
              title: 'Login',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
            ),
            UselessContainer(
              title: 'SignUp',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EnterPhoneNumber(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class UselessContainer extends StatelessWidget {
  String title;
  VoidCallback onTap;
  UselessContainer({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(
          bottom: 20,
        ),
        height: 75,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(
            50,
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
