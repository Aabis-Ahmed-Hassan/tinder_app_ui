import 'package:flutter/material.dart';
import 'package:tinder_app_ui/screens/before_login_screens/login_with_email.dart';

import '../../components/my_app_bar.dart';
import '../../components/my_button.dart';
import '../../constants/app_padding.dart';
import '../../constants/app_texts.dart';

class AccountRecovery extends StatelessWidget {
  const AccountRecovery({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      appBar: MyAppBar(
        showLeading: false,
        showActions: false,
        showTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image(
                height: height * 0.0225,
                image: const AssetImage(
                  'assets/icons/go_back_icon.png',
                ),
              ),
            ),
          ],
        ),
        centerTitle: false,
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
                  height: height * 0.035,
                ),
                Text(
                  'Acconunt Recovery',
                  style: AppTexts.myHeadingTextStyle3,
                ),
                SizedBox(
                  height: height * 0.035,
                ),
                Text(
                  'Change your phone number, or lost access to your Facebook Account? We can help you login with your email.',
                  textAlign: TextAlign.center,
                  style: AppTexts.myParagraphTextStyle1,
                ),
                SizedBox(
                  height: height * 0.07,
                ),
                MyButton(
                    title: 'Login with email',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginWithEmail(),
                        ),
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
