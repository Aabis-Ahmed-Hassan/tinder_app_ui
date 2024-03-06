import 'package:flutter/material.dart';
import 'package:swipe_cards/swipe_cards.dart';

import '../../../../components/app_icon.dart';
import '../../../../components/my_app_bar.dart';
import '../../../../constants/app_colors.dart';
import '../../../../constants/images_list.dart';
import 'activity_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<SwipeItem> swipeItems = [];

  late MatchEngine _matchEngine;
  List names = [
    'Micle',
    'Joe',
    'John',
    'David',
    'Joe',
  ];
  List age = [
    '29',
    '19',
    '22',
    '29',
    '37',
  ];
  List distance = [
    '8 miles away',
    '28 miles away',
    '3 miles away',
    '9 miles away',
    '17 miles away',
  ];

  @override
  void initState() {
    for (int i = 0; i < names.length; i++) {
      swipeItems.add(
        SwipeItem(
          content: names[i],
          likeAction: () {},
          nopeAction: () {},
          superlikeAction: () {},
        ),
      );
    }
    _matchEngine = MatchEngine(swipeItems: swipeItems);
    super.initState();
  }

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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ActivityScreen(),
                ),
              );
            },
            icon: Icon(
              Icons.notifications,
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
      body: Expanded(
        child: Container(
          child: SwipeCards(
            matchEngine: _matchEngine,
            onStackFinished: () {
              return ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('The list is over')));
            },
            itemBuilder: (BuildContext context, index) {
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      homepage_images[index],
                    ),
                  ),
                  color: AppColors.defaultColorRed,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Stack(
                  children: [
                    //this widget will add opacity
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.black,
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 0.05,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                names[index].toString(),
                                style: const TextStyle(
                                  fontSize: 38.96,
                                  color: Colors.white,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                width: width * 0.05,
                              ),
                              Text(
                                age[index].toString(),
                                style: const TextStyle(
                                  fontSize: 38.96,
                                  color: Colors.white,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const Spacer(),
                              Container(
                                padding: EdgeInsets.all(width * 0.015),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 0.45,
                                  ),
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: const Icon(
                                  Icons.arrow_upward,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.location_on,
                                color: Colors.white,
                                size: 20,
                              ),
                              SizedBox(
                                width: width * 0.0225,
                              ),
                              Text(
                                distance[index],
                                style: const TextStyle(
                                  fontSize: 18.12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Inter',
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: height * 0.042,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: height * 0.0625,
                                width: height * 0.0625,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(
                                    50,
                                  ),
                                ),
                                child: const Icon(
                                  Icons.refresh,
                                  color: Color(
                                    0xffFFD310,
                                  ),
                                  size: 28,
                                ),
                              ),
                              Container(
                                height: height * 0.085,
                                width: height * 0.085,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(
                                    50,
                                  ),
                                ),
                                child: const Icon(
                                  Icons.close,
                                  color: Color(
                                    0xffF81CFC,
                                  ),
                                  size: 40,
                                ),
                              ),
                              Container(
                                height: height * 0.0625,
                                width: height * 0.0625,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(
                                    50,
                                  ),
                                ),
                                child: const Icon(
                                  Icons.star,
                                  color: Color(
                                    0xff049DFD,
                                  ),
                                  size: 28,
                                ),
                              ),
                              Container(
                                height: height * 0.085,
                                width: height * 0.085,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(
                                    50,
                                  ),
                                ),
                                child: const Icon(
                                  Icons.favorite,
                                  color: Color(
                                    0xff7ACE35,
                                  ),
                                  size: 40,
                                ),
                              ),
                              Container(
                                height: height * 0.0625,
                                width: height * 0.0625,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(
                                    50,
                                  ),
                                ),
                                child: const Icon(
                                  Icons.electric_bolt,
                                  color: Color(
                                    0xffCC53F0,
                                  ),
                                  size: 28,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
