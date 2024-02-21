import 'package:flutter/material.dart';
import 'package:tinder_app_ui/components/logo_image_widget.dart';
import 'package:tinder_app_ui/components/my_app_bar.dart';
import 'package:tinder_app_ui/components/my_button.dart';
import 'package:tinder_app_ui/constants/app_colors.dart';
import 'package:tinder_app_ui/constants/app_padding.dart';
import 'package:tinder_app_ui/constants/app_texts.dart';
import 'package:tinder_app_ui/constants/icon_size.dart';
import 'package:tinder_app_ui/screens/enter_phone_number.dart';

class OOPS_Screen extends StatelessWidget {
  const OOPS_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      appBar: MyAppBar(
        showLeading: true,
        showTitle: true,
        leadingIcon: const Icon(
          Icons.keyboard_arrow_left,
          color: AppColors.appBarLeadingIconColor,
          size: IconSizes.appBarIconSize,
        ),
        title: const LogoImageWidget(),
        showActions: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: width * AppPadding.myPadding),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: height * 0.04,
                ),
                Text(
                  'Oops',
                  style: AppTexts.myHeadingTextStyle3,
                ),
                SizedBox(
                  height: height * 0.035,
                ),
                Text(
                  'We couldn’t find a Tinder account connected to that Facebook Account.',
                  textAlign: TextAlign.center,
                  style: AppTexts.myParagraphTextStyle1,
                ),
                SizedBox(
                  height: height * 0.225,
                ),
                MyButton(
                    title: 'Create Your Account',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EnterPhoneNumber()));
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
