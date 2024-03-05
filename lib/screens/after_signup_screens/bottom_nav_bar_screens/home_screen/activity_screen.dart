import 'package:flutter/material.dart';
import 'package:tinder_app_ui/components/my_app_bar.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      appBar: MyAppBar(
        showLeading: true,
        showTitle: true,
        showActions: false,
        leadingIcon: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Color(
              0xffEC4157,
            ),
            size: 26,
          ),
        ),
        centerTitle: false,
        title: Text(
          'Activity',
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          MyActivity(
            description:
                'Link your Spotify profile to meet people who match to a similar beat 🎧 ',
            buttonText: 'ADD SPOTIFY',
            iconData: Icons.person,
            iconBgColor: Color(0xffFF4C4E),
            timeAgo: '4d',
          ),
          MyActivity(
            description:
                'Link your IG to your profile to show off more of what the people want to see: You 📲 ',
            buttonText: 'ADD INSTAGRAM',
            iconData: Icons.person,
            iconBgColor: Color(0xffFF4C4E),
            timeAgo: '5d',
          ),
          MyActivity(
            description:
                'Get some face time by being one of the top profiles in your area for 30 minutes 🛩 ',
            buttonText: 'BOOST MY PROFILE',
            iconData: Icons.electric_bolt,
            iconBgColor: Color(0xffC05FF7),
            timeAgo: '1w',
          ),
          MyActivity(
            description:
                "Let them know you're the real deal with Selfie Verification 🤳 ",
            buttonText: 'GET VERIFIED',
            iconData: Icons.shield,
            iconBgColor: Color(0xff1886FE),
            timeAgo: '1w',
          ),
        ],
      )),
    );
  }
}

class MyActivity extends StatelessWidget {
  String description, buttonText;
  IconData iconData;
  Color iconBgColor;
  String timeAgo;
  MyActivity({
    super.key,
    required this.description,
    required this.buttonText,
    required this.iconData,
    required this.iconBgColor,
    required this.timeAgo,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.05,
        vertical: height * 0.02,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xffDDDDDF),
            width: 2,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: height * 0.06,
                width: height * 0.06,
                decoration: BoxDecoration(
                  color: iconBgColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Icon(
                  iconData,
                  color: Colors.white,
                  size: 31,
                ),
              )
            ],
          ),
          SizedBox(
            width: width * 0.035,
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: description,
                        style: TextStyle(
                          color: Color(
                            0xff1D1E22,
                          ),
                          fontSize: 16,
                          fontFamily: 'Inter',
                        ),
                      ),
                      TextSpan(
                        text: timeAgo,
                        style: TextStyle(
                          color: Color(0xff5A5B64),
                          fontSize: 15,
                          fontFamily: 'Inter',
                        ),
                      ),
                    ],
                  ),
                ),
                // Text(
                //   description,
                // ),
                SizedBox(
                  height: height * 0.015,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.03,
                    vertical: height * 0.01,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      30,
                    ),
                    border: Border.all(
                      color: Color(
                        0xffBABFC5,
                      ),
                      width: 2,
                    ),
                  ),
                  child: Text(
                    buttonText,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Color(0xff5D6268),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: width * 0.035,
          ),
          Column(
            children: [
              SizedBox(
                height: height * 0.025,
              ),
              CircleAvatar(
                backgroundColor: Color(
                  0xffF94D62,
                ),
                radius: height * 0.004,
              )
            ],
          )
        ],
      ),
    );
  }
}
