import 'package:flutter/material.dart';

import '../../../../components/app_icon.dart';
import '../../../../components/my_app_bar.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.025,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyContainer(
                title: 'Get Photo Verified',
                showButton: true,
                contianerHeight: 0.32,
                notificationNumber: 2,
                imageAddress: 'assets/images/homepage_image_1.jpeg',
              ),
              SizedBox(
                height: height * 0.0275,
              ),
              Text(
                'Welcome to Explore',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                  fontFamily: 'inter',
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: height * 0.005,
              ),
              Text(
                'My Vibe...',
                style: TextStyle(
                  color: Color(
                    0xff4E5057,
                  ),
                  fontFamily: 'Inter',
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: height * 0.024,
              ),
              Row(
                children: [
                  Flexible(
                    fit: FlexFit.loose,
                    child: MyContainer(
                      title: 'Looking for Love',
                      showButton: false,
                      contianerHeight: 0.36,
                      notificationNumber: 8,
                      imageAddress: 'assets/images/homepage_image_2.jpeg',
                    ),
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Flexible(
                    fit: FlexFit.loose,
                    child: MyContainer(
                      title: 'Free Tonight',
                      showButton: false,
                      contianerHeight: 0.36,
                      notificationNumber: 5,
                      imageAddress: 'assets/images/homepage_image_4.jpeg',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Row(
                children: [
                  Flexible(
                    fit: FlexFit.loose,
                    child: MyContainer(
                      title: "Let's be Friends",
                      showButton: false,
                      contianerHeight: 0.36,
                      notificationNumber: 7,
                      imageAddress: 'assets/images/homepage_image_4.jpeg',
                    ),
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Flexible(
                    fit: FlexFit.loose,
                    child: MyContainer(
                      title: 'Coffee Date',
                      showButton: false,
                      contianerHeight: 0.36,
                      notificationNumber: 5,
                      imageAddress: 'assets/images/homepage_image_2.jpeg',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  double contianerHeight;
  String title;
  bool showButton;
  int notificationNumber;
  String imageAddress;
  String buttonText;
  MyContainer({
    super.key,
    required this.title,
    required this.showButton,
    required this.contianerHeight,
    required this.notificationNumber,
    required this.imageAddress,
    this.buttonText = 'TRY NOW',
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return Container(
      height: height * contianerHeight,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            imageAddress,
          ),
        ),
        borderRadius: BorderRadius.circular(
          15,
        ),
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                15,
              ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.8),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.02,
              vertical: height * 0.015,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Stack(
                        children: [
                          // SizedBox(
                          //   width: width * 0.1,
                          // ),
                          Row(
                            children: [
                              SizedBox(
                                width: width * 0.018,
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: width * 0.01,
                                    // vertical: width * 0.0065,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(
                                      0.7,
                                    ),
                                    borderRadius: BorderRadius.circular(
                                      4,
                                    ),
                                    border: Border.all(
                                      color: Colors.white,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      notificationNumber.toString(),
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: height * 0.003,
                                ),
                                const Icon(
                                  Icons.person,
                                  color: Colors.white,
                                  size: 15,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 29,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: showButton
                      ? Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: width * 0.03,
                              vertical: height * 0.01),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                          ),
                          child: const Text(
                            'TRY NOW',
                            style: TextStyle(
                              color: Color(0xff23242B),
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                        )
                      : null,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// class MyNotificationCount extends StatelessWidget {
//   int notificationCount;
//
//   MyNotificationCount({
//     super.key,
//     required this.notificationCount,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     var width = MediaQuery.of(context).size.width * 1;
//     var height = MediaQuery.of(context).size.height * 1;
//     return Stack(
//       children: [
//         // SizedBox(
//         //   width: width * 0.1,
//         // ),
//         Row(
//           children: [
//             SizedBox(
//               width: width * 0.018,
//             ),
//             Align(
//               alignment: Alignment.centerRight,
//               child: Container(
//                 padding: EdgeInsets.symmetric(
//                   horizontal: width * 0.01,
//                   // vertical: width * 0.0065,
//                 ),
//                 decoration: BoxDecoration(
//                   color: Colors.black.withOpacity(
//                     0.7,
//                   ),
//                   borderRadius: BorderRadius.circular(
//                     4,
//                   ),
//                   border: Border.all(
//                     color: Colors.white,
//                   ),
//                 ),
//                 child: Center(
//                   child: Text(
//                     notificationCount.toString(),
//                     style: const TextStyle(
//                       color: Colors.white,
//                       fontSize: 14,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//         Align(
//           alignment: Alignment.centerLeft,
//           child: Column(
//             children: [
//               SizedBox(
//                 height: height * 0.003,
//               ),
//               const Icon(
//                 Icons.person,
//                 color: Colors.white,
//                 size: 15,
//               )
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }
