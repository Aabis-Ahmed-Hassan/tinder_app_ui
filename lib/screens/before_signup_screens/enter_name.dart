import 'package:flutter/material.dart';
import 'package:tinder_app_ui/components/my_button.dart';
import 'package:tinder_app_ui/constants/app_bar_slider_value.dart';
import 'package:tinder_app_ui/constants/app_colors.dart';
import 'package:tinder_app_ui/constants/app_texts.dart';
import 'package:tinder_app_ui/screens/before_signup_screens/enter_birthday.dart';

import '../../components/my_app_bar.dart';
import '../../constants/app_padding.dart';

class Enter_Name extends StatefulWidget {
  const Enter_Name({super.key});

  @override
  State<Enter_Name> createState() => _Enter_NameState();
}

class _Enter_NameState extends State<Enter_Name> {
  final nameController = TextEditingController();

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
                value: AppBarSliderValue.sliderValue * 1,
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
                    Navigator.pop(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Enter_Birthday()));
                  },
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    //Instead of choosing icon, I'm choosing image as the icon in figma is bold.

                    child: Image(
                      height: height * 0.0225,
                      image: AssetImage(
                        'assets/icons/close_icon.png',
                      ),
                    ),
                  ),
                )
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
                      'My first\nname is',
                      style: AppTexts.myHeadingTextStyle1,
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Container(
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
                        controller: nameController,
                        style: TextStyle(
                          color: Color(0xff444142),
                          fontSize: 19.48,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                        onChanged: (value) {
                          setState(() {});
                        },
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          hintText: 'John Doe',
                          hintStyle: TextStyle(
                            color: Color(0xff444142),
                            fontSize: 19.48,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.06,
                    ),
                    Text(
                      'This is how it will appear in Tinder and you will not be able to change it',
                      style: TextStyle(
                        color: Color(0xff828693),
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Inter',
                        fontSize: 13.19,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.07,
              ),
              MyButton(
                title: 'Continue',
                showGradient: nameController.text.isNotEmpty,
                showBoxShadow: nameController.text.isNotEmpty,
                onTap: () {
                  if (nameController.text.isNotEmpty) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Enter_Birthday()));
                  }
                },
                widthInMediaQuery: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
