import 'package:flutter/material.dart';
import 'package:tinder_app_ui/components/my_button.dart';
import 'package:tinder_app_ui/constants/app_texts.dart';
import 'package:tinder_app_ui/screens/enter_name.dart';

import '../components/my_app_bar.dart';
import '../constants/app_colors.dart';
import '../constants/app_padding.dart';
import '../constants/icon_size.dart';

class EnterPhoneNumber extends StatelessWidget {
  const EnterPhoneNumber({super.key});

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
      body: SingleChildScrollView(
        child: Padding(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                    child: const DropdownMenu(
                      trailingIcon: Icon(
                        Icons.arrow_drop_down,
                        color: Color(0xff444142),
                        size: 28,
                      ),
                      initialSelection: 'KR +82',
                      textStyle: TextStyle(
                        color: Color(0xff444142),
                        fontSize: 19.48,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                      dropdownMenuEntries: [
                        DropdownMenuEntry(
                          value: 'KR +82',
                          label: 'KR +82',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: width * 0.035,
                  ),
                  Expanded(
                    child: Container(
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
                  )
                ],
              ),
              SizedBox(
                height: height * 0.07,
              ),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'We will send a text with a verification code. Message and data rates may apply. ',
                      style: TextStyle(
                        fontSize: 13.59,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Inter',
                        color: Color(
                          0xff828693,
                        ),
                      ),
                    ),
                    TextSpan(
                      text: 'Learn what happens when your number changes.',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: Color(
                          0xffA1A0A0,
                        ),
                        fontSize: 13.59,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Inter',
                        color: Color(
                          0xff444142,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.14,
              ),
              MyButton(
                title: 'Continue',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Enter_Name(),
                    ),
                  );
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
