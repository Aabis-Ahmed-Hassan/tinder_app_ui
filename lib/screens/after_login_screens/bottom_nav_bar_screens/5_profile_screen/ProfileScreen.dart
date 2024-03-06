import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tinder_app_ui/components/logo_image_widget.dart';
import 'package:tinder_app_ui/components/my_button.dart';
import 'package:tinder_app_ui/constants/app_colors.dart';

import '../../../../components/app_icon.dart';
import '../../../../components/my_app_bar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List pageViewTitle = [
    'Get Tinder Platinum',
    'Get Tinder Gold™',
    'Tinder Plus®',
  ];

  List pageViewDescription = [
    'Level up every action you take on Tinder',
    'See who Likes You & more!',
    'Get Unlimited Likes, Passport and more!',
  ];
  List pageViewImageAddress = [
    'assets/images/app_icon_colored.png',
    'assets/images/app_icon_colored.png',
    'assets/images/app_icon_colored.png',
  ];
  List pageViewButtonTextColor = [
    Color(0xff000000),
    Color(0xff8B6912),
    AppColors.defaultColorRed,
  ];
  int buttonIndex = 0;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: MyAppBar(
          showLeading: false,
          showActions: true,
          showTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppIcon(),
              SizedBox(
                width: width * 0.005,
              ),
              Image(
                height: height * 0.032,
                image: const AssetImage(
                  'assets/images/tinder_text.png',
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shield,
                color: Color(0xff7D8590),
                size: 32,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: Color(0xff7D8590),
                size: 32,
              ),
            ),
            SizedBox(
              width: width * 0.03,
            ),
          ],
          centerTitle: false,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: height * 0.325,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              color: AppColors.defaultColorRed,
                              width: 7.5,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(width * 0.018),
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                'assets/images/homepage_image_2.jpeg',
                              ),
                              radius: width * 0.175,
                            ),
                          ),
                        ),
                        Positioned(
                          right: width * 0.01,
                          top: height * 0.02,
                          child: Stack(
                            children: [
                              Container(
                                padding: EdgeInsets.all(width * 0.02),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      spreadRadius: 1.5,
                                      blurRadius: 2,
                                    )
                                  ],
                                  color: Colors.white,
                                ),
                                child: Icon(
                                  Icons.mode_edit_outline_rounded,
                                  size: 26,
                                  color: Color(0xff818695),
                                ),
                              ),
                              Positioned(
                                right: width * 0.005,
                                top: height * 0.00475,
                                child: Container(
                                  height: height * 0.01,
                                  width: height * 0.01,
                                  decoration: BoxDecoration(
                                    color: AppColors.defaultColorRed,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 1 / 2,
                          right: 1 / 2,
                          child: MyButton(
                            title: '100% Complete',
                            showBoxShadow: false,
                            widthInMediaQuery: 0.46,
                            heightInMediaQuery: 0.04,
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.015,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Abc, 23',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Inter',
                            color: Colors.black,
                            fontSize: 24,
                          ),
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Container(
                          padding: EdgeInsets.all(width * 0.004),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xff7A7C7F),
                            ),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Icon(
                            Icons.done,
                            color: Color(0xff7A7C7F),
                            size: 16,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.05,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyContainerForProfileScreen(
                          icon: Icon(
                            Icons.star,
                            color: Color(0xff1E8EC5),
                            size: 30,
                          ),
                          yourTextSpan: Container(
                            child: Align(
                              alignment: Alignment.center,
                              child: Center(
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '2 ',
                                        style: TextStyle(
                                          color: Color(0xff1E8EC5),
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Inter',
                                          fontSize: 16,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Super Likes',
                                        style: TextStyle(
                                          color: Color(0xff56595F),
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Inter',
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        MyContainerForProfileScreen(
                          icon: Icon(
                            Icons.electric_bolt,
                            color: Color(0xff9409E8),
                            size: 30,
                          ),
                          yourTextSpan: Container(
                            child: Align(
                              alignment: Alignment.center,
                              child: Center(
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'My Boosts ',
                                        style: TextStyle(
                                          color: Color(0xff56595F),
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Inter',
                                          fontSize: 15,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'GET MORE',
                                        style: TextStyle(
                                          color: Color(0xff9409E8),
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Inter',
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        MyContainerForProfileScreen(
                          icon: LogoImageWidget(),
                          yourTextSpan: Container(
                            child: Align(
                              alignment: Alignment.center,
                              child: Center(
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Subscriptions',
                                        style: TextStyle(
                                          color: Color(0xff56595F),
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Inter',
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.07,
                    ),
                    Container(
                      height: height * 0.12,
                      child: PageView.builder(
                        onPageChanged: (int index) {
                          setState(() {
                            buttonIndex = index;
                          });
                        },
                        itemCount: pageViewTitle.length,
                        itemBuilder: (context, index) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image(
                                    height: height * 0.02,
                                    image: AssetImage(
                                      pageViewImageAddress[index],
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.015,
                                  ),
                                  Text(
                                    pageViewTitle[index],
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                      fontFamily: 'Inter',
                                      fontSize: 21,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: height * 0.025,
                              ),
                              Text(
                                pageViewDescription[index],
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Inter',
                                  color: Color(0xff595D62),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: height * 0.005,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: height * 0.0075,
                          width: height * 0.0075,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: buttonIndex == 0
                                ? Color(0xff000000)
                                : Color(0xff808493),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Container(
                          height: height * 0.0075,
                          width: height * 0.0075,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: buttonIndex == 1
                                ? Color(0xff000000)
                                : Color(0xff808493),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Container(
                          height: height * 0.0075,
                          width: height * 0.0075,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: buttonIndex == 2
                                ? Color(0xff000000)
                                : Color(0xff808493),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Container(
                      height: height * 0.05,
                      width: width * 0.6,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 5,
                            spreadRadius: 1,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          pageViewTitle[buttonIndex],
                          style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.w600,
                            color: pageViewButtonTextColor[buttonIndex],
                            fontFamily: 'Inter',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

class MyContainerForProfileScreen extends StatelessWidget {
  var icon;

  Widget yourTextSpan;
  MyContainerForProfileScreen({
    super.key,
    required this.icon,
    required this.yourTextSpan,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return Stack(
      children: [
        Container(
          height: height * 0.1275,
          width: height * 0.1275,
          margin: EdgeInsets.only(
            right: width * 0.025,
            top: width * 0.025,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              15,
            ),
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: width * 0.04,
                horizontal: width * 0.02,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  icon,
                  SizedBox(
                    height: height * 0.012,
                  ),
                  Flexible(
                    fit: FlexFit.loose,
                    child: yourTextSpan,
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          right: 0,
          top: 0,
          child: Container(
            padding: EdgeInsets.all(width * 0.007),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Color(
                  0xff7C8696,
                ),
                width: 0.75,
              ),
            ),
            child: Icon(
              Icons.add,
              color: Color(
                0xff7C8696,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
