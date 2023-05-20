// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:shootbee/Viwes/Utils/AppColors.dart';
// import 'package:shootbee/Viwes/Utils/MyText.dart';
// import 'package:shootbee/Viwes/Utils/MyTextFromField.dart';

// import '../Utils/Service&Function.dart';

// class SearchScreen extends StatefulWidget {
//   const SearchScreen({super.key});

//   @override
//   State<SearchScreen> createState() => _SearchScreenState();
// }

// class _SearchScreenState extends State<SearchScreen>
//     with TickerProviderStateMixin {
//   TextEditingController searchControllor = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     TabController tabController = TabController(length: 2, vsync: this);
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             Utils.verticalSpacer(20),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 22),
//               child: MyTextField(
//                 hintText: 'Search tags, people, topics etc...',
//                 controller: searchControllor,
//                 pIcon: Icons.search_sharp,
//               ),
//             ),
//             Utils.verticalSpacer(20),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 22),
//               child: Row(
//                 children: [
//                   Icon(Icons.arrow_back),
//                   Expanded(
//                     child: TabBar(
//                         physics: const BouncingScrollPhysics(),
//                         controller: tabController,
//                         indicatorWeight: 4.0,
//                         indicatorColor: MyColor.hardpink,
//                         labelColor: MyColor.hardpink,
//                         unselectedLabelColor: MyColor.gray,
//                         labelStyle: TextStyle(
//                             color: MyColor.hardpink,
//                             fontSize: 24,
//                             fontWeight: FontWeight.w600),
//                         unselectedLabelStyle: TextStyle(
//                             color: MyColor.gray,
//                             fontSize: 24,
//                             fontWeight: FontWeight.w600),
//                         indicatorSize: TabBarIndicatorSize.label,
//                         tabs: const [
//                           Tab(
//                             child: Center(
//                               child: Text(
//                                 'Posts',
//                               ),
//                             ),
//                           ),
//                           Tab(
//                             child: Center(
//                               child: Text(
//                                 'Peoples',
//                               ),
//                             ),
//                           )
//                         ]),
//                   ),
//                 ],
//               ),
//             ),
//             Utils.verticalSpacer(33),
//             Expanded(
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 22),
//                 child: TabBarView(controller: tabController, children: [
//                   GridView.builder(
//                       gridDelegate:
//                           const SliverGridDelegateWithFixedCrossAxisCount(
//                               mainAxisExtent: 272, crossAxisCount: 2),
//                       itemBuilder: (context, index) {
//                         return Row(
//                           children: [
//                             Flexible(
//                               child: Container(
//                                 decoration: const BoxDecoration(
//                                     image: DecorationImage(
//                                         image:
//                                             AssetImage('assets/ImageGirl.png'),
//                                         fit: BoxFit.cover)),
//                                 child: Padding(
//                                   padding: const EdgeInsets.all(8.0),
//                                   child: Row(
//                                     crossAxisAlignment: CrossAxisAlignment.end,
//                                     children: [
//                                       Container(
//                                         height: 20,
//                                         width: 20,
//                                         decoration: BoxDecoration(
//                                             image: const DecorationImage(
//                                                 image: AssetImage(
//                                                     'assets/GirlImage.png')),
//                                             shape: BoxShape.circle,
//                                             border: Border.all(
//                                                 color: MyColor.orangeColor,
//                                                 width: 2)),
//                                       ),
//                                       Utils.horizontalSpacer(8),
//                                       Column(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.end,
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: [
//                                           MyText(
//                                             text: 'Alex_Henderson',
//                                             fontsize: 10,
//                                             fontcolor: Colors.white,
//                                           ),
//                                           MyText(
//                                               text: 'te5min agoxt',
//                                               fontsize: 8,
//                                               fontweight: FontWeight.w500,
//                                               fontcolor:
//                                                   Colors.white.withOpacity(.7))
//                                         ],
//                                       ),
//                                       Spacer(),
//                                       Padding(
//                                         padding: const EdgeInsets.all(6.0),
//                                         child: Row(
//                                           children: [
//                                             MyText(
//                                                 text: '48',
//                                                 fontsize: 10,
//                                                 fontcolor: Colors.white
//                                                     .withOpacity(.7)),
//                                             Icon(Icons.heart_broken_outlined,
//                                                 size: 10,
//                                                 color: Colors.white
//                                                     .withOpacity(.7)),
//                                           ],
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         );
//                       }),
//                   ListView.builder(
//                       itemCount: 3,
//                       itemBuilder: (context, index) {
//                         return Padding(
//                           padding: const EdgeInsets.only(bottom: 24),
//                           child: Row(
//                             children: [
//                               Container(
//                                 height: 60,
//                                 width: 60,
//                                 decoration: const BoxDecoration(
//                                     shape: BoxShape.circle,
//                                     image: DecorationImage(
//                                         image:
//                                             AssetImage('assets/ImageGirl.png'),
//                                         fit: BoxFit.cover)),
//                               ),
//                               Utils.horizontalSpacer(20),
//                               Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   MyText(
//                                     text: 'Marvin McKinney ',
//                                     fontsize: 18,
//                                     fontweight: FontWeight.bold,
//                                   ),
//                                   Utils.verticalSpacer(4),
//                                   MyText(
//                                     text: 'sara.cruz@example.com',
//                                     fontsize: 14,
//                                     fontweight: FontWeight.w500,
//                                     fontcolor: MyColor.davegray,
//                                   ),
//                                 ],
//                               ),
//                               const Spacer(),
//                               Container(
//                                 height: 32,
//                                 width: 68,
//                                 decoration: BoxDecoration(
//                                     color: MyColor.orangeColor,
//                                     borderRadius: BorderRadius.circular(100)),
//                                 child: Center(
//                                   child: MyText(
//                                     text: 'Follow',
//                                     fontcolor: MyColor.bgWhiteColor,
//                                   ),
//                                 ),
//                               )
//                             ],
//                           ),
//                         );
//                       })
//                 ]),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shootbee/Viwes/Utils/MyTextFromField.dart';
import 'package:shootbee/Viwes/Utils/Service&Function.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Utils/AppColors.dart';
import '../Utils/MyText.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({Key? key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen>
    with SingleTickerProviderStateMixin {
  var searchfield = TextEditingController();
  late TabController tabController;
  List<Widget> _tabViews = [SearchPost(), Peopels()];

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
    // Listen to tab changes and update the views
    tabController.addListener(() {
      setState(() {
        _tabViews = [
          SearchPost(),
          Peopels(),
        ];
      });
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          20.h.heightBox,
          MyTextField(
            hintText: "Search posts",
            controller: searchfield,
            pIcon: Icons.search,
          ),
          TabBar(
            indicatorColor: MyColor.hardpink,
            indicatorWeight: 4,
            labelColor: MyColor.hardpink,
            unselectedLabelColor: MyColor.hardpink.withOpacity(.32),
            controller: tabController,
            tabs: [
              Tab(
                text: 'Post',
              ),
              Tab(
                text: 'People',
              ),
            ],
            // labelColor: Colors.black,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Use the _tabViews list to show the current view
                  _tabViews[tabController.index],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Peopels extends StatelessWidget {
  const Peopels({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: "Talha".text.make(),
        subtitle: "talha@gmail.com".text.make(),
      ),
    );
  }
}

class SearchPost extends StatelessWidget {
  const SearchPost({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 20,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 4.0,
            mainAxisExtent: 272),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              // Get.to(() => PostScreen());
            },
            child: Container(
              height: 272,
              // width: MediaQuery.of(context).size.width * .4,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage('assets/ImageGirl.png'),
                      fit: BoxFit.cover),
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage('assets/GirlImage.png')),
                          shape: BoxShape.circle,
                          border:
                              Border.all(color: MyColor.orangeColor, width: 2)),
                    ),
                    Utils.horizontalSpacer(8),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                          text: 'Alex_Henderson',
                          fontsize: 10,
                          fontcolor: Colors.white,
                        ),
                        MyText(
                            text: 'te5min agoxt',
                            fontsize: 8,
                            fontweight: FontWeight.w500,
                            fontcolor: Colors.white.withOpacity(.7))
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Row(
                        children: [
                          MyText(
                              text: '48',
                              fontsize: 10,
                              fontcolor: Colors.white.withOpacity(.7)),
                          Icon(Icons.heart_broken_outlined,
                              size: 10, color: Colors.white.withOpacity(.7)),
                        ],
                      ),
                    ),
                    // Utils.horizontalSpacer(5),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
