import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:shootbee/Viwes/SettingScreen/SettingScreen.dart';
import 'package:shootbee/Viwes/Utils/AppColors.dart';
import 'package:shootbee/Viwes/Utils/Header.dart';
import 'package:shootbee/Viwes/Utils/MyText.dart';
import 'package:shootbee/Viwes/Utils/Service&Function.dart';

import '../Utils/MyButton.dart';

class AddStory extends StatelessWidget {
  const AddStory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 22, right: 22),
          child: Column(
            children: [
              HeaderWidget(
                icon: Icons.arrow_back,
                appbarTitle: 'Add Story',
                leadingIcon: Icons.settings,
              ),
              Utils.verticalSpacer(57),
              Row(
                children: [
                  MyText(text: 'Gallery'),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_drop_down),
                  ),
                  Spacer(),
                  Container(
                    height: 26,
                    width: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: MyColor.hardpink)),
                    child: Center(
                      child: MyText(
                        text: 'Select',
                        fontsize: 12,
                        fontcolor: MyColor.hardpink,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class EidtPost extends StatelessWidget {
  const EidtPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(color: MyColor.hardpink),
        child: SafeArea(
            child: Padding(
          padding:
              const EdgeInsets.only(left: 22, right: 22, top: 20, bottom: 40),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back_ios),
                    color: MyColor.bgWhiteColor,
                  ),
                  Image.asset(
                    'assets/TTextIcon.png',
                    height: 23.33,
                    width: 21,
                  ),
                  Utils.horizontalSpacer(25),
                  Image.asset(
                    'assets/Camera.png',
                    height: 23,
                    width: 21,
                  ),
                  Utils.horizontalSpacer(25),
                  Image.asset(
                    'assets/VideoIcon.png',
                    height: 25.67,
                    width: 18,
                  ),
                  Utils.horizontalSpacer(25),
                  Image.asset(
                    'assets/LocationAddIcon.png',
                    height: 18,
                    width: 23.33,
                  ),
                  Spacer(),
                  MyText(
                    text: 'Post',
                    fontsize: 24,
                    fontweight: FontWeight.bold,
                    fontcolor: MyColor.bgWhiteColor,
                  )
                ],
              ),
              Spacer(),
              MyText(
                text: 'Write your\nmessage...',
                fontsize: 28,
                fontweight: FontWeight.w600,
                fontcolor: MyColor.bgWhiteColor,
              ),
              Spacer(),
              Row(
                children: [
                  Image.asset(
                    'assets/SmileEmojiIcon.png',
                    height: 23.34,
                    width: 23.43,
                  ),
                  Utils.horizontalSpacer(25.67),
                  Image.asset(
                    'assets/AtextIcon.png',
                    height: 23,
                    width: 23,
                  ),
                  Utils.horizontalSpacer(25.67),
                  Image.asset(
                    'assets/BagIcon.png',
                    height: 23.33,
                    width: 23.33,
                  ),
                  Utils.horizontalSpacer(25.67),
                  Image.asset(
                    'assets/LineIcons.png',
                    height: 24,
                    width: 21,
                  ),
                  Utils.horizontalSpacer(25.67),
                  Image.asset(
                    'assets/ColorEditIcon.png',
                    height: 21,
                    width: 21,
                  ),
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}

class SharePost extends StatelessWidget {
  const SharePost({super.key});

  final bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 22, right: 22, top: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderWidget(
                  icon: Icons.arrow_back, appbarTitle: 'Share Story to feed'),
              Utils.verticalSpacer(30),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .27,
                    height: 178,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                            image: AssetImage('assets/ImageGirl.png'),
                            fit: BoxFit.cover)),
                    child: Center(
                      child: Image.asset(
                        'assets/Playbutton.png',
                        height: 20.19,
                        width: 20.19,
                      ),
                    ),
                  ),
                  Utils.horizontalSpacer(10),
                  Expanded(
                    child: Container(
                      height: 197,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: MyColor.grayWhite,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 24, left: 17),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MyText(
                              text: 'Caption',
                              fontsize: 18,
                              fontweight: FontWeight.bold,
                            ),
                            Utils.verticalSpacer(16),
                            MyText(
                              text:
                                  'Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit,sed do\n eiusmod tempor incididunt ut\n labore et dolore magna aliqua.',
                              fontsize: 14,
                              fontweight: FontWeight.w500,
                              fontcolor: MyColor.lightBlack,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Utils.verticalSpacer(23),
              const Divider(
                thickness: 1,
                color: Color(0xffEEEEEE),
              ),
              Utils.verticalSpacer(21),
              Row(
                children: [
                  Image.asset(
                    'assets/OutLineWindowIcon.png',
                    height: 22,
                    width: 22,
                  ),
                  Utils.horizontalSpacer(20),
                  MyText(
                    text: 'Also Share to Feed',
                    fontsize: 18,
                  ),
                  const Spacer(),
                  Transform.scale(
                    scale: .7,
                    child: FlutterSwitch(
                        inactiveColor: const Color(0xffEEEEEE),
                        activeColor: MyColor.hardpink,
                        value: isSelected,
                        onToggle: (bool value) {}),
                  )
                ],
              ),
              Utils.verticalSpacer(25),
              const RowWidgets(
                title: 'Reel ',
                image: 'assets/GalleryIcon.png',
              ),
              const RowWidgets(
                title: 'Add to Collection',
                image: 'assets/AddCollection.png',
              ),
              const RowWidgets(
                title: 'Tag People',
                image: 'assets/AddPerson.png',
                text: 'English (US)',
              ),
              const RowWidgets(
                title: 'Add Location',
                image: 'assets/OutLineLocationIcon.png',
              ),
              Utils.verticalSpacer(20),
              const RowWidgets(
                title: 'Advance Options',
                image: 'assets/SettingIcon.png',
              ),
              MyButton(
                  height: 58,
                  radius: 16,
                  // gradient: LinearGradient(
                  //     colors: [MyColor.hardpink, MyColor.hardpink]),
                  buttontext: 'Share',
                  onPressed: () {}),
              Utils.verticalSpacer(14),
              MyButton(
                  height: 58,
                  radius: 16,
                  // gradient: LinearGradient(colors: [
                  //   MyColor.hardpink.withOpacity(.10),
                  //   MyColor.hardpink.withOpacity(.10)
                  // ], begin: Alignment.center, end: Alignment.center),
                  buttontext: 'Save Draft',
                  onPressed: () {})
            ],
          ),
        ),
      )),
    );
  }
}
