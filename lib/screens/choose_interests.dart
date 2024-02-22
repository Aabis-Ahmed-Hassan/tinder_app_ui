import 'package:flutter/material.dart';
import 'package:tinder_app_ui/components/my_button.dart';
import 'package:tinder_app_ui/constants/app_bar_slider_value.dart';
import 'package:tinder_app_ui/constants/app_colors.dart';
import 'package:tinder_app_ui/constants/app_texts.dart';
import 'package:tinder_app_ui/screens/add_photos.dart';

import '../components/my_app_bar.dart';
import '../constants/app_padding.dart';

class ChooseInterests extends StatefulWidget {
  const ChooseInterests({Key? key}) : super(key: key);

  @override
  State<ChooseInterests> createState() => _ChooseInterestsState();
}

class _ChooseInterestsState extends State<ChooseInterests> {
  List<String> interests = [
    'Soccer',
    'Netflix',
    'Concerts',
    'Snapchat',
    'Baking',
    'Exploring',
    'Videography',
    'Style',
    'Esports',
    'Writing',
    'Podcasts',
    'Design',
    'Documentaries',
    'Health',
    'Programming',
    'Singing',
    'Pets',
    'Outdoors',
    'Cookery',
    'Meditation',
    'Basketball',
    'YouTube',
    'Shopping',
    'TikTok',
    'Painting',
    'Gardening',
    'Tea',
    'Board games',
    'Crafts',
    'Politics',
    'Entrepreneurship',
    'Cycling',
    'DIY',
    'Coffee',
    'Acting',
  ];

  List<String> selectedInterests = [];

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
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 0.0),
              ),
              child: Slider(
                activeColor: AppColors.defaultColorRed,
                inactiveColor: Color(0xffD9D9D9),
                thumbColor: Colors.transparent,
                value: AppBarSliderValue.sliderValue * 3,
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
                      image: AssetImage(
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * AppPadding.myPadding / 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Interests',
                    style: AppTexts.myHeadingTextStyle1,
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Text(
                    'Let everyone know what you’re interested in by adding it to your profile.',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Inter',
                      fontSize: 13.19,
                      color: Color(
                        0xffC6C5C7,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Wrap(
              children: interests.map((interest) {
                return MyInterestOption(
                  title: interest,
                  onTap: () {
                    if (selectedInterests.length < 5 ||
                        selectedInterests.contains(interest)) {
                      setState(() {
                        if (selectedInterests.contains(interest)) {
                          selectedInterests.remove(interest);
                        } else {
                          selectedInterests.add(interest);
                        }
                      });
                    }
                  },
                  isSelected: selectedInterests.contains(interest),
                );
              }).toList(),
            ),
            Spacer(),
            MyButton(
              title: 'Continue ${selectedInterests.length}/5',
              onTap: () {
                if (selectedInterests.length == 5) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Add_Photos()));
                }
              },
              widthInMediaQuery: 1,
              showGradient: selectedInterests.length >= 5,
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

class MyInterestOption extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool isSelected;

  const MyInterestOption({
    required this.title,
    required this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height * 0.04,
        margin: EdgeInsets.only(right: width * 0.025, bottom: height * 0.015),
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.025, vertical: height * 0.01),
        decoration: BoxDecoration(
          color: isSelected ? Color(0xffEA5B6E) : Colors.white,
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
            color: isSelected ? Color(0xffEA5B6E) : Color(0xffDEE0E7),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: isSelected ? Colors.white : Color(0xffBFC3CF),
            fontSize: 14.98,
            fontWeight: FontWeight.w700,
            fontFamily: 'Inter',
          ),
        ),
      ),
    );
  }
}

//useless code
// import 'package:flutter/material.dart';
// import 'package:tinder_app_ui/components/my_button.dart';
// import 'package:tinder_app_ui/constants/app_bar_slider_value.dart';
// import 'package:tinder_app_ui/constants/app_colors.dart';
// import 'package:tinder_app_ui/constants/app_texts.dart';
//
// import '../components/my_app_bar.dart';
// import '../constants/app_padding.dart';
//
// class ChooseInterests extends StatefulWidget {
//   const ChooseInterests({super.key});
//
//   @override
//   State<ChooseInterests> createState() => _ChooseInterestsState();
// }
//
// class _ChooseInterestsState extends State<ChooseInterests> {
//   int interestsSelected = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     var height = MediaQuery.of(context).size.height * 1;
//     var width = MediaQuery.of(context).size.width * 1;
//
//     return Scaffold(
//       appBar: MyAppBar(
//         showLeading: false,
//         showActions: false,
//         showTitle: true,
//         title: Stack(
//           children: [
//             SliderTheme(
//               data: SliderTheme.of(context).copyWith(
//                 thumbShape: RoundSliderThumbShape(enabledThumbRadius: 0.0),
//               ),
//               child: Slider(
//                 activeColor: AppColors.defaultColorRed,
//                 inactiveColor: Color(0xffD9D9D9),
//                 thumbColor: Colors.transparent,
//                 value: AppBarSliderValue.sliderValue * 3,
//                 onChanged: (value) {},
//               ),
//             ),
//             Column(
//               children: [
//                 SizedBox(
//                   height: height * 0.0425,
//                 ),
//                 InkWell(
//                   onTap: () {
//                     Navigator.pop(context);
//                   },
//                   child: Align(
//                     alignment: Alignment.bottomLeft,
//                     //Instead of choosing icon, I'm choosing image as the icon in figma is bold.
//
//                     child: Image(
//                       height: height * 0.0225,
//                       image: AssetImage(
//                         'assets/icons/go_back_icon.png',
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//         centerTitle: false,
//       ),
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: width * AppPadding.myPadding),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: EdgeInsets.symmetric(
//                   horizontal: width * AppPadding.myPadding / 2),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text(
//                     'Interests',
//                     style: AppTexts.myHeadingTextStyle1,
//                     textAlign: TextAlign.start,
//                   ),
//                   SizedBox(
//                     height: height * 0.02,
//                   ),
//                   Text(
//                     'Let everyone know what you’re interested in by adding it to your profile.',
//                     style: TextStyle(
//                       fontWeight: FontWeight.w500,
//                       fontFamily: 'Inter',
//                       fontSize: 13.19,
//                       color: Color(
//                         0xffC6C5C7,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Text(
//               interestsSelected.toString(),
//               style: TextStyle(fontSize: 50),
//             ),
//             Wrap(
//               children: [
//                 MyInterestOption(
//                   title: 'Hockey',
//                   onTap: () {},
//                   interestSelected: interestsSelected,
//                 ),
//                 MyInterestOption(
//                   title: 'Spotify',
//                   onTap: () {},
//                   interestSelected: interestsSelected,
//                 ),
//                 MyInterestOption(
//                   title: 'Theater',
//                   onTap: () {},
//                   interestSelected: interestsSelected,
//                 ),
//                 MyInterestOption(
//                   title: 'Instagram',
//                   onTap: () {},
//                   interestSelected: interestsSelected,
//                 ),
//                 MyInterestOption(
//                   title: 'Cooking',
//                   onTap: () {},
//                   interestSelected: interestsSelected,
//                 ),
//                 MyInterestOption(
//                   title: 'Traveling',
//                   onTap: () {},
//                   interestSelected: interestsSelected,
//                 ),
//                 MyInterestOption(
//                   title: 'Photography',
//                   onTap: () {},
//                   interestSelected: interestsSelected,
//                 ),
//                 MyInterestOption(
//                   title: 'Fashion',
//                   onTap: () {},
//                   interestSelected: interestsSelected,
//                 ),
//                 MyInterestOption(
//                   title: 'Gaming',
//                   onTap: () {},
//                   interestSelected: interestsSelected,
//                 ),
//                 MyInterestOption(
//                   title: 'Reading',
//                   onTap: () {},
//                   interestSelected: interestsSelected,
//                 ),
//                 MyInterestOption(
//                   title: 'Music',
//                   onTap: () {},
//                   interestSelected: interestsSelected,
//                 ),
//                 MyInterestOption(
//                   title: 'Art',
//                   onTap: () {},
//                   interestSelected: interestsSelected,
//                 ),
//                 MyInterestOption(
//                   title: 'Movies',
//                   onTap: () {},
//                   interestSelected: interestsSelected,
//                 ),
//                 MyInterestOption(
//                   title: 'Fitness',
//                   onTap: () {},
//                   interestSelected: interestsSelected,
//                 ),
//                 MyInterestOption(
//                   title: 'Coding',
//                   onTap: () {},
//                   interestSelected: interestsSelected,
//                 ),
//                 MyInterestOption(
//                   title: 'Dancing',
//                   onTap: () {},
//                   interestSelected: interestsSelected,
//                 ),
//                 MyInterestOption(
//                   title: 'Animals',
//                   onTap: () {},
//                   interestSelected: interestsSelected,
//                 ),
//                 MyInterestOption(
//                   title: 'Nature',
//                   onTap: () {},
//                   interestSelected: interestsSelected,
//                 ),
//                 MyInterestOption(
//                   title: 'Food',
//                   onTap: () {},
//                   interestSelected: interestsSelected,
//                 ),
//                 MyInterestOption(
//                   title: 'Yoga',
//                   onTap: () {},
//                   interestSelected: interestsSelected,
//                 ),
//               ],
//             ),
//             SizedBox(height: height * 0.0225),
//             MyButton(
//               title: 'Continue $interestsSelected/5',
//               onTap: () {},
//               widthInMediaQuery: 1,
//               showGradient: interestsSelected >= 5,
//             ),
//             SizedBox(
//               height: height * 0.06,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             interestsSelected++;
//           });
//         },
//       ),
//     );
//   }
// }
//
// class MyInterestOption extends StatefulWidget {
//   String title;
//   var onTap;
//
//   int interestSelected;
//
//   MyInterestOption({
//     super.key,
//     required this.title,
//     required this.onTap,
//     required this.interestSelected,
//   });
//
//   @override
//   State<MyInterestOption> createState() => _MyInterestOptionState();
// }
//
// class _MyInterestOptionState extends State<MyInterestOption> {
//   Color textColor = Color(0xffBFC3CF), borderColor = Color(0xffDEE0E7);
//   bool thisOptionIsSelected = false;
//
//   @override
//   Widget build(BuildContext context) {
//     var height = MediaQuery.of(context).size.height * 1;
//     var width = MediaQuery.of(context).size.width * 1;
//     return InkWell(
//       onTap: () {
//         setState(() {
//           widget.interestSelected++;
//           print(widget.interestSelected);
//
//           thisOptionIsSelected = !thisOptionIsSelected;
//         });
//       },
//       child: Container(
//         height: height * 0.04,
//         margin: EdgeInsets.only(right: width * 0.025, bottom: height * 0.015),
//         padding: EdgeInsets.symmetric(
//             horizontal: width * 0.025, vertical: height * 0.01),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(100),
//           border: Border.all(
//             color: thisOptionIsSelected ? Color(0xffEA5B6E) : Color(0xffDEE0E7),
//           ),
//         ),
//         child: Text(
//           widget.title,
//           style: TextStyle(
//             color: thisOptionIsSelected ? Color(0xffEA5B6E) : textColor,
//             fontSize: 14.98,
//             fontWeight: FontWeight.w700,
//             fontFamily: 'Inter',
//           ),
//         ),
//       ),
//     );
//   }
// }
