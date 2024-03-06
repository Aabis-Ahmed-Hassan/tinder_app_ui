import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tinder_app_ui/components/app_icon.dart';
import 'package:tinder_app_ui/components/my_app_bar.dart';
import 'package:tinder_app_ui/constants/app_colors.dart';

class MatchesScreen extends StatefulWidget {
  const MatchesScreen({super.key});

  @override
  State<MatchesScreen> createState() => _MatchesScreenState();
}

class _MatchesScreenState extends State<MatchesScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
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
              size: 26,
            ),
          ),
          SizedBox(
            width: width * 0.03,
          ),
        ],
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.025),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.025,
                ),
                //wrapping in row because in tinder, the underline is only under textformfield, not under icon
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.search,
                      color: AppColors.defaultColorRed,
                      size: 22,
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Flexible(
                      fit: FlexFit.loose,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Search 0 Matches',
                          hintStyle: TextStyle(
                            color: Color(0xff55575E),
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.0175,
              ),
              Text(
                'New Matches',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Inter',
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: height * 0.0175,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: height * 0.02,
                        ),
                        child: Container(
                          height: height * 0.16,
                          width: width * 0.2,
                          margin: EdgeInsets.only(right: width * 0.05),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Color(0xffE7A852),
                              width: 3,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(width * 0.01),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/images/homepage_image_0.jpg',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 1 / 2,
                        right: 1 / 2,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Center(
                            child: Icon(
                              Icons.favorite,
                              size: 28,
                              color: Color(0xffE7A852),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  MyStory(),
                  MyStory(),
                  MyStory(),
                  MyStory(),
                  MyStory(),
                  MyStory(),
                  MyStory(),
                ]),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Text(
                'Messages',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Inter',
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              MyMessage(
                imageAddress: 'assets/images/homepage_image_0.jpg',
                contactName: 'Sachia',
                lastMessage: 'Recently active, match now!',
              ),
              MyMessage(
                imageAddress: 'assets/images/homepage_image_1.jpeg',
                contactName: 'Achqi',
                lastMessage: "Hey, what's up with dog pics?",
              ),
              MyMessage(
                imageAddress: 'assets/images/homepage_image_2.jpeg',
                contactName: 'Shain',
                lastMessage: 'Recently active, match now!',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyMessage extends StatelessWidget {
  String imageAddress;
  String contactName;
  String lastMessage;
  MyMessage({
    super.key,
    required this.imageAddress,
    required this.contactName,
    required this.lastMessage,
  });
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;

    return Container(
      margin: EdgeInsets.only(bottom: height * 0.02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: width * 0.09,
            backgroundImage: AssetImage(
              imageAddress,
            ),
          ),
          SizedBox(
            width: width * 0.03,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                contactName,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Inter',
                  fontSize: 19,
                ),
              ),
              Text(
                lastMessage,
                style: TextStyle(
                  color: Color(0xff656E7B),
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Inter',
                  fontSize: 15,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class MyStory extends StatelessWidget {
  const MyStory({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return Padding(
      padding: EdgeInsets.only(
        bottom: height * 0.02,
      ),
      child: Container(
        height: height * 0.16,
        width: width * 0.2,
        margin: EdgeInsets.only(right: width * 0.05),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(
            0xffEAEBEF,
          ),
        ),
      ),
    );
  }
}
