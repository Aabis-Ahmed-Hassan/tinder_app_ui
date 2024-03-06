import 'package:flutter/material.dart';

import '../../../../components/app_icon.dart';
import '../../../../components/my_app_bar.dart';

class GoldHome extends StatefulWidget {
  const GoldHome({super.key});

  @override
  State<GoldHome> createState() => _GoldHomeState();
}

class _GoldHomeState extends State<GoldHome> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: MyAppBar(
          showLeading: false,
          showActions: false,
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
          centerTitle: false,
        ),
        body: Scaffold(
          appBar: AppBar(
            toolbarHeight: 0,
            automaticallyImplyLeading: false,
            bottom: TabBar(
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.transparent,
              labelStyle: TextStyle(
                color: Color(
                  0xff202127,
                ),
                fontWeight: FontWeight.w500,
                fontFamily: 'Inter',
                fontSize: 17,
              ),
              unselectedLabelStyle: TextStyle(
                color: Color(
                  0xff6C7380,
                ),
                fontWeight: FontWeight.w500,
                fontFamily: 'Inter',
                fontSize: 17,
              ),
              tabs: [
                Tab(
                  child: Text(
                    '2 Like',
                  ),
                ),
                Tab(
                  child: Text('Top Picks'),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              //first tab widgets (Like)
              SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.025,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: height * 0.025,
                      ),
                      //text (upgrade app). I used container to give it fixed width
                      Container(
                        width: width * 0.6,
                        child: Text(
                          'Upgrade to Gold to see people who have already like you.',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Color(0xff545960),
                            fontFamily: 'Inter',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.025,
                      ),
                      //two images in a row
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(
                            fit: FlexFit.loose,
                            child: MyLike(
                              activeStatus: 'Recently Active',
                              imageAddress:
                                  'assets/images/homepage_image_2.jpeg',
                              statusColor: Color(
                                0xff77E24C,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          Flexible(
                            fit: FlexFit.loose,
                            child: MyLike(
                              activeStatus: 'Recently Active',
                              imageAddress:
                                  'assets/images/homepage_image_0.jpg',
                              statusColor: Color(
                                0xff77E24C,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.18,
                      ),
                      //button 'See Who Likes You'
                      Container(
                        height: height * 0.055,
                        width: width * 0.6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xffE9B526),
                        ),
                        child: Center(
                          child: Text(
                            'See Who LIkes You',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Inter',
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              //second tab widgets (Top Picks)
              SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.025,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: height * 0.025,
                      ),
                      MyTopPick(
                          title: 'Recently Active',
                          image1NameAndAge: 'Sandhya, 24',
                          image2NameAndAge: 'Haxika, 24',
                          buttonText: 'SEE MORE',
                          image1Address: 'assets/images/homepage_image_2.jpeg',
                          image2Address: 'assets/images/homepage_image_3.jpeg',
                          widgetUnderName1: Row(
                            children: [
                              Container(
                                height: height * 0.01,
                                width: height * 0.01,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color(
                                    0xff77E24C,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              Text(
                                'Recently Active',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          widgetUnderName2: Row(
                            children: [
                              Container(
                                height: height * 0.01,
                                width: height * 0.01,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color(
                                    0xff77E24C,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              Text(
                                'Recently Active',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          )),
                      MyTopPick(
                        title: 'Common Passions',
                        image1NameAndAge: 'Bernali, 25',
                        image2NameAndAge: 'Anqie, 34',
                        buttonText: 'SEE MORE',
                        image1Address: 'assets/images/homepage_image_2.jpeg',
                        image2Address: 'assets/images/homepage_image_1.jpeg',
                        widgetUnderName1: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: width * 0.0125,
                            vertical: height * 0.005,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.grey.withOpacity(0.425),
                            border: Border.all(
                              width: 1,
                              color: Colors.white,
                            ),
                          ),
                          child: Text(
                            'Black Lives Matter',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Inter',
                              fontSize: 12.5,
                            ),
                          ),
                        ),
                        widgetUnderName2: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: width * 0.0125,
                            vertical: height * 0.005,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.grey.withOpacity(0.425),
                            border: Border.all(
                              width: 1,
                              color: Colors.white,
                            ),
                          ),
                          child: Text(
                            'Black Lives Matter',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Inter',
                              fontSize: 12.5,
                            ),
                          ),
                        ),
                      ),
                      MyTopPick(
                        title: 'Recommended',
                        image1NameAndAge: 'Anqie, 34',
                        image2NameAndAge: 'Ilaye, 27',
                        buttonText: 'SEE MORE',
                        image1Address: 'assets/images/homepage_image_0.jpg',
                        image2Address: 'assets/images/homepage_image_2.jpeg',
                        widgetUnderName1: Text(
                          '14h left',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Inter',
                          ),
                        ),
                        widgetUnderName2: Text(
                          '14h left',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ),
                    ],
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

class MyLike extends StatelessWidget {
  String activeStatus;
  String imageAddress;
  Color statusColor;

  MyLike({
    super.key,
    required this.activeStatus,
    required this.imageAddress,
    required this.statusColor,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return Container(
      height: height * 0.32,
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.025,
        vertical: height * 0.01,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            imageAddress,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: height * 0.0125,
                width: height * 0.0125,
                decoration: BoxDecoration(
                  color: statusColor,
                  borderRadius: BorderRadius.circular(
                    50,
                  ),
                ),
              ),
              SizedBox(
                width: width * 0.01,
              ),
              Text(
                activeStatus,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Inter',
                  fontSize: 17,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class MyTopPick extends StatelessWidget {
  String title,
      image1NameAndAge,
      image2NameAndAge,
      buttonText,
      image1Address,
      image2Address;

  Widget? widgetUnderName1;
  Widget? widgetUnderName2;
  MyTopPick({
    super.key,
    required this.title,
    required this.image1NameAndAge,
    required this.image2NameAndAge,
    required this.buttonText,
    required this.image1Address,
    required this.image2Address,
    required this.widgetUnderName1,
    required this.widgetUnderName2,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //show title (e.g; Recently Active)
        Padding(
          padding: EdgeInsets.only(
            left: width * 0.02,
          ),
          child: Text(
            title,
            style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
              fontSize: 22,
              color: Colors.black,
            ),
          ),
        ),
        //space between title and Row (two images)
        SizedBox(
          height: height * 0.03,
        ),
        //showing two images in a container
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            //using flex widget so both contains will have equal width
            Flexible(
              fit: FlexFit.loose,
              child: Container(
                height: height * 0.27,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      image1Address,
                    ),
                  ),
                ),
                //using stack widget to show a black shadow from the bottom
                child: Stack(
                  children: [
                    //the container responsible for black shadow
                    Container(
                      height: double.infinity,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.transparent,
                            Colors.transparent,
                            Colors.black,
                          ],
                        ),
                      ),
                    ),
                    //the widget showing name, age, icon and specific widget
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: width * 0.02,
                          vertical: height * 0.0085,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            //column showing name, age and specific widget
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //flexible is used so if the name is length, overflow error will not occur
                                Flexible(
                                  fit: FlexFit.loose,
                                  child: Text(
                                    image1NameAndAge,
                                    style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Inter',
                                    ),
                                  ),
                                ),

                                widgetUnderName1!,
                              ],
                            ),
                            //the widget showing blue color star icon
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: height * 0.0425,
                                      width: height * 0.0425,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(
                                          50,
                                        ),
                                      ),
                                      child: Icon(
                                        Icons.star,
                                        size: 30,
                                        color: Color(
                                          0xff24B6F6,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: width * 0.02,
            ),
            //using flex widget so both contains will have equal width

            Flexible(
              fit: FlexFit.loose,
              child: Container(
                height: height * 0.27,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      image2Address,
                    ),
                  ),
                ),
                //using stack widget to show a black shadow from the bottom
                child: Stack(
                  children: [
                    //the container responsible for black shadow
                    Container(
                      height: double.infinity,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.transparent,
                            Colors.transparent,
                            Colors.black,
                          ],
                        ),
                      ),
                    ),
                    //the widget showing name, age, icon and specific widget
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: width * 0.02,
                          vertical: height * 0.0085,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            //column showing name, age and specific widget
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //flexible is used so if the name is length, overflow error will not occur
                                Flexible(
                                  fit: FlexFit.loose,
                                  child: Text(
                                    image2NameAndAge,
                                    style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Inter',
                                    ),
                                  ),
                                ),

                                widgetUnderName2!,
                              ],
                            ),
                            //the widget showing blue color star icon
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: height * 0.0425,
                                      width: height * 0.0425,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(
                                          50,
                                        ),
                                      ),
                                      child: Icon(
                                        Icons.star,
                                        size: 30,
                                        color: Color(
                                          0xff24B6F6,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        //show space between row (two images) and 'See More' button
        SizedBox(
          height: height * 0.03,
        ),
        //see more button
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            height: height * 0.055,
            width: width * 0.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                50,
              ),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 2,
                  spreadRadius: 0.3,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontFamily: 'Inter',
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: height * 0.03,
        ),
      ],
    );
  }
}
