import 'package:flutter/material.dart';
import 'package:tinder_app_ui/components/my_button.dart';
import 'package:tinder_app_ui/constants/app_colors.dart';
import 'package:tinder_app_ui/constants/app_texts.dart';

import '../components/my_app_bar.dart';
import '../constants/app_padding.dart';

class Enter_Name extends StatelessWidget {
  const Enter_Name({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      appBar: MyAppBar(
        showLeading: false,
        showActions: false,
        showTitle: true,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 0.0),
              ),
              child: Slider(
                activeColor: AppColors.defaultColorRed,
                inactiveColor: Color(0xffD9D9D9),
                thumbColor: Colors.transparent,
                value: 0.17,
                onChanged: (value) {},
              ),
            ),
            Icon(
              Icons.close,
              color: AppColors.appBarLeadingIconColor,
              size: 28,
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
                onTap: () {},
                widthInMediaQuery: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
