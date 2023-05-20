import 'package:flutter/material.dart';
import 'package:shootbee/Viwes/Utils/AppColors.dart';
import 'package:shootbee/Viwes/Utils/MyText.dart';

import '../Utils/Header.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../Utils/Service&Function.dart';

class NotificationScreen extends StatefulWidget {
  NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List<bool> switchValues = List.filled(10, false);

  // bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderWidget(
        appbarTitle: 'Notification',
        icon: Icons.arrow_back,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 22,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                NotificationWidget(
                  title: 'General Notification',
                  value: switchValues[0],
                  onChanged: (value) => setState(() => switchValues[0] = value),
                  // switchValues: switchValues,
                  // index: 0,
                ),
                NotificationWidget(
                  title: 'Sound',
                  value: switchValues[1],
                  onChanged: (value) => setState(() => switchValues[1] = value),
                ),
                NotificationWidget(
                  title: 'Vibrate',
                  value: switchValues[2],
                  onChanged: (value) => setState(() => switchValues[2] = value),
                ),
                NotificationWidget(
                  title: 'Special Offers',
                  value: switchValues[3],
                  onChanged: (value) => setState(() => switchValues[3] = value),
                ),
                NotificationWidget(
                  title: 'Promo & Discount',
                  value: switchValues[4],
                  onChanged: (value) => setState(() => switchValues[4] = value),
                ),
                NotificationWidget(
                  title: 'Payments',
                  value: switchValues[5],
                  onChanged: (value) => setState(() => switchValues[5] = value),
                ),
                NotificationWidget(
                  title: 'Cashback',
                  value: switchValues[6],
                  onChanged: (value) => setState(() => switchValues[6] = value),
                ),
                NotificationWidget(
                  title: 'App Updates',
                  value: switchValues[7],
                  onChanged: (value) => setState(() => switchValues[7] = value),
                ),
                NotificationWidget(
                  title: 'New Service Available',
                  value: switchValues[8],
                  onChanged: (value) => setState(() => switchValues[8] = value),
                ),
                NotificationWidget(
                  title: 'New Tips Available',
                  value: switchValues[9],
                  onChanged: (value) => setState(() => switchValues[9] = value),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NotificationWidget extends StatelessWidget {
  final String title;
  final bool value;
  final ValueChanged<bool> onChanged;

  NotificationWidget({
    required this.title,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Spacer(),
          Transform.scale(
            scale: .7,
            child: FlutterSwitch(
              inactiveColor: Color(0xffEEEEEE),
              activeColor: Colors.pink,
              value: value,
              onToggle: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}
