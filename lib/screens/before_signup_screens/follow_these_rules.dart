import 'package:flutter/material.dart';
import 'package:tinder_app_ui/components/logo_image_widget.dart';

import '../../components/my_app_bar.dart';
import '../../components/my_button.dart';
import '../../constants/app_padding.dart';
import '../after_login_screens/welcome_to_tinder.dart';

class FollowTheseRules extends StatelessWidget {
  const FollowTheseRules({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
        appBar: MyAppBar(
          showLeading: false,
          showActions: false,
          showTitle: true,
          title: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Image(
                height: height * 0.0225,
                image: const AssetImage(
                  'assets/icons/go_back_icon.png',
                ),
              ),
            ),
          ),
          centerTitle: false,
        ),
        body: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: width * AppPadding.myPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width * AppPadding.myPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LogoImageWidget(),
                    SizedBox(
                      height: height * 0.015,
                    ),
                    const Text(
                      'Welcome to Tinder',
                      style: TextStyle(
                        color: Color(0xff444142),
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Inter',
                      ),
                    ),
                    SizedBox(
                      height: height * 0.0075,
                    ),
                    const Text(
                      'Please follow these House Rules.',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Inter',
                        fontSize: 14.4,
                        color: Color(
                          0xff828693,
                        ),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.08,
              ),
              MyInstruction(
                  heading: 'Be yourself.',
                  description:
                      'Make sure your photos, age, and bio are true to who you are.'),
              MyInstruction(
                  heading: 'Stay Safe',
                  description:
                      'Don’t be too quick to give out personal information. Date Safely'),
              MyInstruction(
                  heading: 'Play it cool.',
                  description:
                      'Respect others and treat them as you would like to be treated.'),
              MyInstruction(
                  heading: 'Be proactive.',
                  description: 'Always report bad behavior.'),
              const Spacer(),
              MyButton(
                title: 'I Agree',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Lets_Get_You_Ready()));
                },
                widthInMediaQuery: 1,
              ),
              SizedBox(
                height: height * 0.06,
              ),
            ],
          ),
        ));
  }
}

class MyInstruction extends StatelessWidget {
  String heading, description;
  MyInstruction({
    super.key,
    required this.heading,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: width * 0.008,
            ),
            Icon(
              Icons.done,
              color: Color(0xffEC5C54),
            ),
            SizedBox(
              width: width * 0.0225,
            ),
            Text(
              heading,
              style: TextStyle(
                color: Color(0xff484648),
                fontWeight: FontWeight.w700,
                fontSize: 16,
                fontFamily: 'Inter',
              ),
            ),
          ],
        ),
        SizedBox(
          height: height * 0.008,
        ),
        Text(
          description,
          style: TextStyle(
            color: Color(0xff828693),
            fontSize: 14,
            fontWeight: FontWeight.w600,
            fontFamily: 'Inter',
          ),
        ),
        SizedBox(
          height: height * 0.02,
        ),
      ],
    );
  }
}
