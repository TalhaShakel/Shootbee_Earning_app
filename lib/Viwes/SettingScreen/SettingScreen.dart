import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shootbee/Viwes/SettingScreen/TermConditionscreen.dart';
import 'package:shootbee/Viwes/SettingScreen/FQAsScreen.dart';
import 'package:shootbee/Viwes/SettingScreen/LanguageScreen.dart';
import 'package:shootbee/Viwes/SettingScreen/PrivacyPolicyScreen.dart';
import 'package:shootbee/Viwes/Utils/AppColors.dart';
import 'package:shootbee/Viwes/Utils/MyText.dart';

import '../Utils/Header.dart';
import '../Utils/Service&Function.dart';
import 'NotificationScreen.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderWidget(
        icon: Icons.arrow_back,
        appbarTitle: 'Setting',
        leadingIcon: Icons.home_outlined,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Utils.verticalSpacer((20)),
                // Spacer(),
                const CardWidgets(),
                Utils.verticalSpacer(30),
                Column(
                  children: [
                    const RowWidgets(
                      title: 'Edit Profile',
                      image: 'assets/SettingScreenIcon/Profile.png',
                    ),
                    const RowWidgets(
                      title: 'Redeem Coins',
                      image: 'assets/SettingScreenIcon/Wallet.png',
                    ),
                    RowWidgets(
                      title: 'Notification',
                      image: 'assets/SettingScreenIcon/Notification.png',
                      onPress: () {
                        Get.to(() => NotificationScreen());
                      },
                    ),
                    RowWidgets(
                        title: 'Language',
                        image: 'assets/SettingScreenIcon/MoreCircle.png',
                        text: 'English (US)',
                        onPress: () {
                          Get.to(() => LanguageScreen());
                        }),
                    const RowWidgets(
                      title: 'Security',
                      image: 'assets/SettingScreenIcon/ShieldDone.png',
                    ),
                    RowWidgets(
                      title: 'Privacy Policy',
                      image: 'assets/SettingScreenIcon/Lock.png',
                      onPress: () {
                        Get.to(() => PrivacyPolicyScreen());
                      },
                    ),
                    RowWidgets(
                      title: 'Terms & Conditions',
                      image: 'assets/SettingScreenIcon/3User.png',
                      onPress: () {
                        Get.to(() => const TermAndConditionScreen());
                      },
                    ),
                    RowWidgets(
                      title: 'FAQs',
                      image: 'assets/SettingScreenIcon/Show.png',
                      onPress: () {
                        Get.to(() => FAQScreen());
                      },
                    ),
                    const RowWidgets(
                      title: 'Logout',
                      image: 'assets/SettingScreenIcon/Logout.png',
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CardWidgets extends StatelessWidget {
  const CardWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.topCenter, children: [
      Container(
        height: 148,
        margin: const EdgeInsets.only(top: 60),
        decoration: BoxDecoration(
          color: MyColor.brown.withOpacity(.2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 22, top: 19),
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: MyColor.darkPink,
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: MyColor.orangeColor, width: 4)),
                        child: Image.asset(
                          'assets/BitcoinSign.svg.png',
                          color: Colors.white,
                          height: 30,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      Utils.verticalSpacer(1),
                      MyText(
                        text: '15780',
                        fontsize: 16,
                        fontcolor: MyColor.blackColor,
                      ),
                      MyText(
                        text: 'Bee Coins',
                        fontsize: 8,
                        fontweight: FontWeight.w400,
                        fontcolor: MyColor.blackColor,
                      )
                    ],
                  ),
                ),
                // Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 22, top: 19),
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: MyColor.darkPink,
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: MyColor.orangeColor, width: 4)),
                        child: Image.asset(
                          'assets/BitcoinSign.svg.png',
                          color: Colors.white,
                          height: 30,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      Utils.verticalSpacer(1),
                      MyText(
                        text: '15780',
                        fontsize: 16,
                        fontcolor: MyColor.blackColor,
                      ),
                      MyText(
                        text: 'Bee Coins',
                        fontsize: 8,
                        fontweight: FontWeight.w400,
                        fontcolor: MyColor.blackColor,
                      )
                    ],
                  ),
                )
              ],
            ),
            MyText(
                text: 'Alex Henderson',
                fontsize: 24,
                fontweight: FontWeight.w700,
                fontcolor: MyColor.darkBlack),
            Utils.verticalSpacer(8),
            MyText(
              text: 'Alex.henderson@yourdomain.com',
              fontsize: 14,
            ),
          ],
        ),
      ),
      Align(
          alignment: Alignment.topCenter,
          child: Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: MyColor.lightpink, width: 3),
                image: const DecorationImage(
                    image: AssetImage('assets/ImageGirl.png'),
                    fit: BoxFit.cover)),
          ))
    ]);
  }
}

class RowWidgets extends StatelessWidget {
  final String image;
  final String title;
  final String text;
  final VoidCallback? onPress;

  const RowWidgets({
    this.onPress,
    required this.title,
    required this.image,
    this.text = '',
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 25),
        child: Row(
          children: [
            Image.asset(image),
            Utils.horizontalSpacer(24),
            MyText(
              text: title,
              fontsize: 18,
              fontcolor: MyColor.darkBlack,
            ),
            const Spacer(),
            MyText(text: text),
            Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}
