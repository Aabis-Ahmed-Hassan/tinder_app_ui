import 'package:flutter/material.dart';
import 'package:tinder_app_ui/components/my_app_bar.dart';
import 'package:tinder_app_ui/constants/app_colors.dart';

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
        leadingIcon: Icon(
          Icons.back_hand,
          color: AppColors.defaultColorRed,
        ),
        centerTitle: false,
        title: Text(
          'Activity',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.03,
          ),
          child: Column(
            children: [
              MyActivity(
                description:
                    'Link your Spotify proile to eet people who match to a similar beat. 🎧 4d',
                buttonText: 'ADD Spotify',
                iconData: Icons.person,
                iconBgColor: Color(0xffFF4C4E),
              ),
              MyActivity(
                description:
                    'Link your Spotify proile to eet people who match to a similar beat. 🎧 4d',
                buttonText: 'ADD Spotify',
                iconData: Icons.person,
                iconBgColor: Color(0xffFF4C4E),
              ),
              MyActivity(
                description:
                    'Link your Spotify proile to eet people who match to a similar beat. 🎧 4d',
                buttonText: 'ADD Spotify',
                iconData: Icons.person,
                iconBgColor: Color(0xffFF4C4E),
              ),
              MyActivity(
                description:
                    'Link your Spotify proile to eet people who match to a similar beat. 🎧 4d',
                buttonText: 'ADD Spotify',
                iconData: Icons.person,
                iconBgColor: Color(0xffFF4C4E),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyActivity extends StatelessWidget {
  String description, buttonText;
  IconData iconData;
  Color iconBgColor;
  MyActivity(
      {super.key,
      required this.description,
      required this.buttonText,
      required this.iconData,
      required this.iconBgColor});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.02,
        vertical: height * 0.02,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xffDDDDDF),
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            height: height * 0.065,
            width: height * 0.065,
            decoration: BoxDecoration(
              color: iconBgColor,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Icon(
              iconData,
              color: Colors.white,
              size: 31,
            ),
          ),
          Flexible(
              fit: FlexFit.loose,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [Text(description)],
              ))
        ],
      ),
    );
  }
}
