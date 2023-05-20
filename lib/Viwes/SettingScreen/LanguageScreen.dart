import 'package:flutter/material.dart';
import 'package:shootbee/Viwes/Utils/AppColors.dart';
import 'package:shootbee/Viwes/Utils/Header.dart';
import 'package:shootbee/Viwes/Utils/MyText.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../Utils/Service&Function.dart';

class LanguageScreen extends StatefulWidget {
  @override
  _LanguageScreenState createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  String _selectedLanguage = 'English(US)';

  final List<String> _languages = [
    "English(UK)",
    'Spanish',
    'French',
    'German',
    'Italian',
    'Chinese',
    'Japanese',
    'Korean',
    'Arabic',
    'Russian',
    'Portuguese',
    'English(US)',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderWidget(icon: Icons.arrow_back, appbarTitle: 'Language'),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                text: 'Suggested',
                fontweight: FontWeight.bold,
                fontsize: 20,
              ),
              Utils.verticalSpacer(10),
              ListTile(
                title: MyText(
                  text: _selectedLanguage,
                  fontsize: 18,
                  fontweight: FontWeight.w600,
                  fontcolor: MyColor.darkBlack,
                ),
                trailing: Radio(
                  activeColor: MyColor.hardpink,
                  value: 'English(US)',
                  groupValue: _selectedLanguage,
                  onChanged: (value) {
                    setState(() {
                      _selectedLanguage = value.toString();
                    });
                  },
                ),
              ),
              ListTile(
                title: MyText(
                  text: _languages.first,
                  fontsize: 18,
                  fontweight: FontWeight.w600,
                  fontcolor: MyColor.darkBlack,
                ),
                trailing: Radio(
                  activeColor: MyColor.hardpink,
                  value: 'English(UK)',
                  groupValue: _selectedLanguage,
                  onChanged: (value) {
                    setState(() {
                      _selectedLanguage = value.toString();
                    });
                  },
                ),
              ),
              Utils.verticalSpacer(10),
              MyText(
                text: 'Language',
                fontweight: FontWeight.bold,
                fontsize: 20,
              ),
              Utils.verticalSpacer(20),
              Expanded(
                child: ListView.builder(
                  itemCount: _languages.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: MyText(
                        text: _languages[index],
                        fontsize: 18,
                        fontweight: FontWeight.w600,
                        fontcolor: MyColor.darkBlack,
                      ),
                      trailing: Radio(
                        activeColor: MyColor.hardpink,
                        value: _languages[index],
                        groupValue: _selectedLanguage,
                        onChanged: (value) {
                          setState(() {
                            _selectedLanguage = value.toString();
                          });
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NotificationWidget extends StatelessWidget {
  final String title;
  NotificationWidget({required this.title, super.key});
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: Row(
        children: [
          MyText(
            text: title,
            fontsize: 18,
            fontweight: FontWeight.w600,
            fontcolor: MyColor.lightBlack,
          ),
          const Spacer(),
          Transform.scale(
            scale: .7,
            child: FlutterSwitch(
                inactiveColor: Color(0xffEEEEEE),
                activeColor: MyColor.hardpink,
                value: isSelected,
                onToggle: (bool value) {}),
          )
        ],
      ),
    );
  }
}
