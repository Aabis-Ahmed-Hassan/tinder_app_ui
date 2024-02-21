import 'package:flutter/material.dart';
import 'package:tinder_app_ui/components/my_button.dart';
import 'package:tinder_app_ui/constants/app_texts.dart';

import '../components/my_app_bar.dart';
import '../constants/app_colors.dart';
import '../constants/app_padding.dart';
import '../constants/icon_size.dart';

class OTP_Verification extends StatelessWidget {
  const OTP_Verification({super.key});
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
        appBar: MyAppBar(
          showLeading: true,
          leadingIcon: const Icon(
            Icons.keyboard_arrow_left,
            color: AppColors.appBarLeadingIconColor,
            size: IconSizes.appBarIconSize,
          ),
          showActions: false,
          showTitle: false,
        ),
        body: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: width * AppPadding.myPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'My number is',
                style: AppTexts.myHeadingTextStyle1,
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Text(
                '000000000',
                style: TextStyle(
                  color: Color(0xff444142),
                  fontSize: 19.48,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: height * 0.06,
              ),
              Row(
                children: List.generate(6, (index) {
                  return Expanded(
                    child: MyOTPBox(),
                  );
                }),
              ),
              SizedBox(
                height: height * 0.22,
              ),
              MyButton(
                title: 'Continue',
                onTap: () {},
                widthInMediaQuery: 1,
              ),
            ],
          ),
        ));
  }
}

class MyOTPBox extends StatelessWidget {
  const MyOTPBox({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.height * 1;
    return Container(
      margin: EdgeInsets.only(right: width * 0.0115),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xff828693),
          ),
        ),
      ),
      child: TextFormField(
        keyboardType: TextInputType.number,
      ),
    );
  }
}
