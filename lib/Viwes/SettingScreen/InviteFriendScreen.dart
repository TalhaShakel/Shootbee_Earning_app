import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shootbee/Viwes/Utils/AppColors.dart';
import 'package:shootbee/Viwes/Utils/Header.dart';
import 'package:shootbee/Viwes/Utils/MyText.dart';

import '../Utils/Service&Function.dart';

class InviteFriendScreen extends StatelessWidget {
  const InviteFriendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            children: [
              Utils.verticalSpacer(20),
              HeaderWidget(
                  icon: Icons.arrow_back, appbarTitle: 'Invite Friends'),
              Utils.verticalSpacer(25),
              Expanded(
                child: ListView.builder(
                    itemCount: 12,
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 24),
                        child: Row(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage('assets/ImageGirl.png'),
                                      fit: BoxFit.cover)),
                            ),
                            Utils.horizontalSpacer(20),
                            Column(
                              children: [
                                MyText(
                                  text: 'Tynisha Obey',
                                  fontsize: 18,
                                  fontweight: FontWeight.bold,
                                ),
                                Utils.verticalSpacer(4),
                                MyText(
                                  text: '+1-300-555-0135',
                                  fontsize: 14,
                                  fontweight: FontWeight.w500,
                                  fontcolor: MyColor.davegray,
                                ),
                              ],
                            ),
                            const Spacer(),
                            Container(
                              height: 32,
                              width: 68,
                              decoration: BoxDecoration(
                                  color: MyColor.hardpink,
                                  borderRadius: BorderRadius.circular(100)),
                              child: Center(
                                child: MyText(
                                  text: 'Invite',
                                  fontcolor: MyColor.bgWhiteColor,
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
