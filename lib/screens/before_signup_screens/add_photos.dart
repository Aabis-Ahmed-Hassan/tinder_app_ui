import 'package:flutter/material.dart';
import 'package:tinder_app_ui/screens/before_signup_screens/follow_these_rules.dart';

import '../../components/my_app_bar.dart';
import '../../components/my_button.dart';
import '../../constants/app_bar_slider_value.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_padding.dart';
import '../../constants/app_texts.dart';

class Add_Photos extends StatefulWidget {
  const Add_Photos({super.key});

  @override
  State<Add_Photos> createState() => _Add_PhotosState();
}

class _Add_PhotosState extends State<Add_Photos> {
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
                thumbShape:
                    const RoundSliderThumbShape(enabledThumbRadius: 0.0),
              ),
              child: Slider(
                activeColor: AppColors.defaultColorRed,
                inactiveColor: const Color(0xffD9D9D9),
                thumbColor: Colors.transparent,
                value: AppBarSliderValue.sliderValue * 4,
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
                    child: Image(
                      height: height * 0.0225,
                      image: const AssetImage(
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
        padding: EdgeInsets.symmetric(horizontal: width * AppPadding.myPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * AppPadding.myPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Add photos',
                    style: AppTexts.myHeadingTextStyle1,
                  ),
                  SizedBox(
                    height: height * 0.012,
                  ),
                  const Text(
                    'Add at least 2 photos to continue',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Inter',
                      fontSize: 13.19,
                      color: Color(
                        0xffC6C5C7,
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: MyImage(
                    onTap: () {},
                    imageAddress: 'assets/images/random_image_2.jpg',
                    imageIsSelected: true,
                  ),
                ),
                Expanded(
                  child: MyImage(
                    onTap: () {},
                    imageAddress: 'assets/images/random_image_2.jpg',
                    imageIsSelected: true,
                  ),
                ),
                Expanded(
                  child: MyImage(
                    onTap: () {},
                    imageAddress: '',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: MyImage(
                    onTap: () {},
                    imageAddress: '',
                  ),
                ),
                // SizedBox(width: width * 0.03),
                Expanded(
                  child: MyImage(
                    onTap: () {},
                    imageAddress: '',
                  ),
                ),
                // SizedBox(width: width * 0.03),
                Expanded(
                  child: MyImage(
                    onTap: () {},
                    imageAddress: '',
                  ),
                ),
              ],
            ),
            const Spacer(),
            MyButton(
              title: 'Continue',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FollowTheseRules()));
              },
              widthInMediaQuery: 1,
            ),
            SizedBox(
              height: height * 0.06,
            ),
          ],
        ),
      ),
    );
  }
}

class MyImage extends StatelessWidget {
  var onTap;

  bool imageIsSelected;
  String imageAddress;

  MyImage(
      {super.key,
      required this.onTap,
      this.imageIsSelected = false,
      required this.imageAddress});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(right: width * 0.03),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: height * 0.17,
                  // margin: EdgeInsets.only(right: width * 0.025),
                  decoration: BoxDecoration(
                    color: const Color(0xffDCDFE6),
                  ),
                  child: imageIsSelected
                      ? Image(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            imageAddress,
                          ),
                        )
                      : null,
                ),
              ),
              SizedBox(
                height: height * 0.005,
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          // right: width * 0.01,
          right: width * 0.02,
          // alignment: Alignment.bottomRight,
          child: InkWell(
            onTap: onTap,
            child: Container(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              height: height * 0.045,
              width: height * 0.045,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xffE6E6E6),
                        blurRadius: 10,
                        spreadRadius: 2),
                  ],
                  gradient: imageIsSelected
                      ? null
                      : LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            AppColors.defaultColorRed,
                            AppColors.defaultColorOrange,
                          ],
                        ),
                  color: imageIsSelected ? Colors.white : null),
              child: Center(
                child: ShaderMask(
                  blendMode: BlendMode.srcIn, // Optional blend mode
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(
                      colors: imageIsSelected
                          ? [
                              AppColors.defaultColorRed,
                              AppColors.defaultColorOrange
                            ]
                          : [
                              Colors.white,
                              Colors.white,
                            ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ).createShader(bounds);
                  },
                  child: Text(
                    '\u002B', // Unicode for a star icon
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 28,
                      // color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
