import 'package:flutter/material.dart';
import 'package:shootbee/Viwes/Utils/AppColors.dart';
import 'package:shootbee/Viwes/Utils/Header.dart';
import 'package:shootbee/Viwes/Utils/MyText.dart';
import 'package:shootbee/Viwes/Utils/Service&Function.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  PrivacyPolicyScreen({super.key});

  final List<PrivacyPolicyTextModel> privacyPolicyList = [
    PrivacyPolicyTextModel(
        title: 'Types of Data We Collect',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
    PrivacyPolicyTextModel(
        title: 'Use of Your Personal Data',
        description:
            'Magna etiam tempor orci eu lobortis elementum nibh. Vulputate enim nulla aliquet porttitor lacus. Orci sagittis eu volutpat odio. Cras semper auctor neque vitae tempus quam pellentesque nec. Non quam lacus suspendisse faucibus interdum posuere lorem ipsum dolor. Commodo elit at imperdiet dui. Nisi vitae suscipit tellus mauris a diam. Erat pellentesque adipiscing commodo elit at imperdiet dui. Mi ipsum faucibus vitae aliquet nec ullamcorper. Pellentesque pulvinar pellentesque habitant morbi tristique senectus et.'),
    PrivacyPolicyTextModel(
        title: 'Disclosure of Your Personal Data',
        description:
            'Consequat id porta nibh venenatis cras sed. Ipsum nunc aliquet bibendum enim facilisis gravida neque. Nibh tellus molestie nunc non blandit massa. Quam pellentesque nec nam aliquam sem et tortor consequat id. Faucibus vitae aliquet nec ullamcorper sit amet risus. Nunc consequat interdum varius sit amet. Eget magna fermentum iaculis eu non diam phasellus vestibulum. Pulvinar pellentesque habitant morbi tristique senectus et. Lorem donec massa sapien faucibus et molestie. Massa tempor nec feugiat nisl pretium fusce id. Lacinia at quis risus sed vulputate odio. Integer vitae justo eget magna fermentum iaculis. Eget gravida cum sociis natoque penatibus et magnis.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 22, top: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderWidget(
                    icon: Icons.arrow_back, appbarTitle: 'Privacy Policy'),
                Utils.verticalSpacer(33),
                ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: privacyPolicyList.length,
                    itemBuilder: (context, index) {
                      final PrivacyText = privacyPolicyList[index];

                      return Padding(
                        padding: const EdgeInsets.only(bottom: 24, right: 22),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MyText(
                              text: ' ${index + 1}. ${PrivacyText.title}',
                              fontsize: 20,
                              fontweight: FontWeight.bold,
                            ),
                            Utils.verticalSpacer(24),
                            MyText(
                              text: PrivacyText.description,
                              fontsize: 14,
                              fontweight: FontWeight.w400,
                              fontcolor: MyColor.lightBlack,
                            )
                          ],
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PrivacyPolicyTextModel {
  final String title;
  final String description;
  PrivacyPolicyTextModel({required this.title, required this.description});
}
