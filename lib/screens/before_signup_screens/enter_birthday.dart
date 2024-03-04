import 'package:flutter/material.dart';
import 'package:tinder_app_ui/components/my_button.dart';
import 'package:tinder_app_ui/constants/app_bar_slider_value.dart';
import 'package:tinder_app_ui/constants/app_colors.dart';
import 'package:tinder_app_ui/constants/app_texts.dart';
import 'package:tinder_app_ui/screens/before_signup_screens/choose_gender.dart';

import '../../components/my_app_bar.dart';
import '../../constants/app_padding.dart';

class Enter_Birthday extends StatelessWidget {
  const Enter_Birthday({super.key});

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
                value: AppBarSliderValue.sliderValue * 2,
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
      body: SingleChildScrollView(
        child: Padding(
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
                      'My\nbirthday is',
                      style: AppTexts.myHeadingTextStyle1,
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: height * 0.014,
                    ),
                    Row(
                      children: List.generate(
                        1,
                        (index) => Expanded(
                          child: MyBirthdayDay(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.015,
                    ),
                    Text(
                      'Your age will be public',
                      style: TextStyle(
                        color: Color(0xff828693),
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Inter',
                        fontSize: 13.19,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              MyButton(
                title: 'Continue',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Choose_Gender()));
                },
                widthInMediaQuery: 1,
                showGradient: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyBirthdayDay extends StatelessWidget {
  const MyBirthdayDay({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      margin: EdgeInsets.zero,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xff828693),
            width: 1.5,
          ),
        ),
      ),
      child: TextFormField(
        style: TextStyle(
          color: Color(0xff444142),
          fontSize: 19.48,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.zero,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          hintText: '000000000',
          hintStyle: TextStyle(
            color: Color(0xff444142),
            fontSize: 19.48,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
