import 'package:flutter/material.dart';

import '../../../../components/app_icon.dart';
import '../../../../components/my_app_bar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
    );
  }
}
