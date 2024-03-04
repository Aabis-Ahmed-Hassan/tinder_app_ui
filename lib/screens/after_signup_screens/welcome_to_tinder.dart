import 'package:flutter/material.dart';
import 'package:tinder_app_ui/components/app_icon.dart';
import 'package:tinder_app_ui/screens/after_signup_screens/root_page.dart';

import '../../components/my_app_bar.dart';
import '../../components/my_button.dart';

class Lets_Get_You_Ready extends StatelessWidget {
  const Lets_Get_You_Ready({super.key});

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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppIcon(),
            SizedBox(
              width: width * 0.005,
            ),
            Image(
              height: height * 0.032,
              image: AssetImage(
                'assets/images/tinder_text.png',
              ),
            ),
          ],
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: height * 0.017),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Stack(
              children: [
                Image(
                  height: height,
                  fit: BoxFit.fitHeight,
                  image: AssetImage(
                    'assets/images/choose_image_screen_image_1.jpg',
                  ),
                ),
                Container(
                  color: Colors.black.withOpacity(0.7),
                  height: height,
                  width: width,
                ),
                //using this container to center the widgets in column
                Container(
                  height: height,
                  width: width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Welcome to Tinder',
                        style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Inter',
                        ),
                      ),
                      SizedBox(
                        height: height * 0.0075,
                      ),
                      const Text(
                        'Please follow these House Rules.',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Inter',
                          fontSize: 14.4,
                          color: Color(
                            0xffFFFFFF,
                          ),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: height * 0.035,
                      ),
                      MyButton(
                        title: 'Start Tutorial',
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RootPage()));
                        },
                        showBoxShadow: false,
                      ),
                      SizedBox(
                        height: height * 0.028,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RootPage()));
                        },
                        child: Text(
                          'Skip',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Inter',
                            fontSize: 13.4,
                            color: Color(
                              0xffFFFFFF,
                            ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
