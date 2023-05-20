import 'package:flutter/material.dart';
import 'package:shootbee/Viwes/Utils/MyText.dart';

import '../Utils/AppColors.dart';
import '../Utils/Service&Function.dart';

class MassageAndNotification extends StatefulWidget {
  const MassageAndNotification({super.key});

  @override
  State<MassageAndNotification> createState() => _MassageAndNotificationState();
}

class _MassageAndNotificationState extends State<MassageAndNotification>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _controller = TabController(length: 2, vsync: this);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: SafeArea(
          child: Column(children: [
            Utils.verticalSpacer(20),
            TabBar(
                physics: const BouncingScrollPhysics(),
                indicatorWeight: 4.0,
                indicatorColor: MyColor.hardpink,
                labelColor: MyColor.hardpink,
                unselectedLabelColor: MyColor.gray,
                labelStyle: TextStyle(
                    color: MyColor.hardpink,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
                unselectedLabelStyle: TextStyle(
                    color: MyColor.gray,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
                controller: _controller,
                tabs: const [
                  Tab(
                    child: Text('Notification'),
                  ),
                  Tab(
                    child: Text('Massage'),
                  )
                ]),
            Utils.verticalSpacer(33),
            Expanded(
              child: TabBarView(controller: _controller, children: [
                ListView.builder(itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 25),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MyText(
                              text: 'John Wick ',
                              fontsize: 18,
                              fontweight: FontWeight.bold,
                            ),
                            Utils.verticalSpacer(1),
                            MyText(
                              text: 'Commented on your post',
                              fontsize: 14,
                              fontweight: FontWeight.w500,
                              fontcolor: MyColor.davegray,
                            ),
                            MyText(
                              text: '5 min ago',
                              fontsize: 14,
                              fontweight: FontWeight.w500,
                              fontcolor: MyColor.davegray.withOpacity(.5),
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
                              text: 'View',
                              fontcolor: MyColor.bgWhiteColor,
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                })
              ]),
            )
          ]),
        ),
      ),
    );
  }
}
