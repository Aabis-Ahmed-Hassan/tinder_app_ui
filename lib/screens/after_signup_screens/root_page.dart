import 'package:flutter/material.dart';
import 'package:tinder_app_ui/screens/after_signup_screens/bottom_nav_bar_screens/home_screen/home_screen.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;

  List uncoloredIconImage = [
    'assets/icons/home_icon.png',
    'assets/icons/explore_icon.png',
    'assets/icons/likes_screen_icon.png',
    'assets/icons/message_icon.png',
    'assets/icons/profile_icon.png',
  ];
  List coloredIconImage = [
    'assets/icons/home_icon_colored.png',
    'assets/icons/explore_icon.png',
    'assets/icons/likes_screen_icon.png',
    'assets/icons/message_icon.png',
    'assets/icons/profile_icon_colored.png',
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      body: IndexedStack(
        index: currentPage,
        children: [
          HomeScreen(),
          Container(
            height: 50,
            width: 50,
            color: Colors.orange,
          ),
          Container(
            height: 50,
            width: 50,
            color: Colors.purple,
          ),
          Container(
            height: 50,
            width: 50,
            color: Colors.blue,
          ),
          Container(
            height: 50,
            width: 50,
            color: Colors.green,
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    currentPage = 0;
                  });
                },
                child: Image(
                  height: height * 0.025,
                  image: AssetImage(
                    currentPage == 0
                        ? coloredIconImage[0]
                        : uncoloredIconImage[0],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    currentPage = 1;
                  });
                },
                child: Image(
                  height: height * 0.025,
                  image: AssetImage(
                    currentPage == 1
                        ? coloredIconImage[1]
                        : uncoloredIconImage[1],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    currentPage = 2;
                  });
                },
                child: Image(
                  height: height * 0.025,
                  image: AssetImage(
                    currentPage == 2
                        ? coloredIconImage[2]
                        : uncoloredIconImage[2],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    currentPage = 3;
                  });
                },
                child: Image(
                  height: height * 0.025,
                  image: AssetImage(
                    currentPage == 3
                        ? coloredIconImage[3]
                        : uncoloredIconImage[3],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    currentPage = 4;
                  });
                },
                child: Image(
                  height: height * 0.025,
                  image: AssetImage(
                    currentPage == 4
                        ? coloredIconImage[4]
                        : uncoloredIconImage[4],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
