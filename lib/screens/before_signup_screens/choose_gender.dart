import 'package:flutter/material.dart';
import 'package:tinder_app_ui/components/my_button.dart';
import 'package:tinder_app_ui/constants/app_bar_slider_value.dart';
import 'package:tinder_app_ui/constants/app_colors.dart';
import 'package:tinder_app_ui/constants/app_texts.dart';
import 'package:tinder_app_ui/screens/before_signup_screens/choose_interests.dart';

import '../../components/my_app_bar.dart';
import '../../constants/app_padding.dart';

class Choose_Gender extends StatefulWidget {
  const Choose_Gender({super.key});

  @override
  State<Choose_Gender> createState() => _Choose_GenderState();
}

class _Choose_GenderState extends State<Choose_Gender> {
  bool value = false;

  String? userGender;
  var maleBackgroundColor = Color(0xffFFFFFF);
  var femaleBackgroundColor = Color(0xffFFFFFF);

  var maleBorderColor = Color(0xffC6C5C7);
  var femaleBorderColor = Color(0xffC6C5C7);
  var maleTextColor = Color(0xffC6C5C7);
  var femaleTextColor = Color(0xffC6C5C7);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;

    return Scaffold(
        appBar: MyAppBar(
          showLeading: false,
          showActions: false,
          showTitle: true,
          title: Stack(
            children: [
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 0.0),
                ),
                child: Slider(
                  activeColor: AppColors.defaultColorRed,
                  inactiveColor: Color(0xffD9D9D9),
                  thumbColor: Colors.transparent,
                  value: AppBarSliderValue.sliderValue * 3,
                  onChanged: (value) {},
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: height * 0.0425,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      //Instead of choosing icon, I'm choosing image as the icon in figma is bold.

                      child: Image(
                        height: height * 0.0225,
                        image: AssetImage(
                          'assets/icons/go_back_icon.png',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          centerTitle: false,
        ),
        body: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: width * AppPadding.myPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width * AppPadding.myPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'I am a',
                      style: AppTexts.myHeadingTextStyle1,
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: height * 0.1,
                    ),
                  ],
                ),
              ),
              MyGender(
                onTap: () {
                  userGender = 'Male';
                  setState(() {
                    if (userGender == 'Male') {
                      maleBackgroundColor = Color(0xffC6C5C7);
                      maleTextColor = Colors.white;
                      maleBorderColor = Colors.white;
                      femaleBackgroundColor = Color(0xffFFFFFF);

                      femaleBorderColor = Color(0xffC6C5C7);
                      femaleTextColor = Color(0xffC6C5C7);
                    }
                  });
                },
                title: 'Male',
                backgroundColor: maleBackgroundColor,
                borderColor: maleBorderColor,
                textColor: maleTextColor,
              ),
              SizedBox(height: height * 0.0225),
              MyGender(
                onTap: () {
                  userGender = 'Female';
                  setState(() {
                    if (userGender == 'Female') {
                      femaleBackgroundColor = Color(0xffC6C5C7);
                      femaleTextColor = Colors.white;
                      femaleBorderColor = Colors.white;
                      maleBackgroundColor = Color(0xffFFFFFF);

                      maleBorderColor = Color(0xffC6C5C7);
                      maleTextColor = Color(0xffC6C5C7);
                    }
                  });
                },
                title: 'Female',
                backgroundColor: femaleBackgroundColor,
                borderColor: femaleBorderColor,
                textColor: femaleTextColor,
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        3,
                      ),
                      side: BorderSide(
                        color: Colors.red,
                      ),
                    ),
                    checkColor: Colors.black,
                    value: value,
                    onChanged: (bool? changedValue) {
                      setState(() {
                        value = !value;
                      });
                    },
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        value = !value;
                      });
                    },
                    child: Text(
                      'Show my gender on my profile',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color(
                          0xff1E1E24,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.035,
              ),
              MyButton(
                title: 'Continue',
                onTap: () {
                  if (userGender == 'Male' || userGender == 'Female') {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChooseInterests()));
                  }
                },
                widthInMediaQuery: 1,
                showGradient: userGender == 'Male' || userGender == 'Female'
                    ? true
                    : false,
              ),
              SizedBox(
                height: height * 0.06,
              ),
            ],
          ),
        ));
  }
}

class MyGender extends StatelessWidget {
  var onTap;
  String title;
  Color backgroundColor, textColor, borderColor;

  MyGender(
      {super.key,
      required this.onTap,
      required this.title,
      required this.backgroundColor,
      required this.borderColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return InkWell(
        onTap: onTap,
        child: Container(
          height: height * 0.055,
          width: width * 1,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: borderColor,
              width: 2,
            ),
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: textColor,
                fontFamily: 'Inter',
                fontSize: 18.14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ));
  }
}
