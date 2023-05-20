import 'package:flutter/material.dart';
import 'package:shootbee/Viwes/Utils/AppColors.dart';
import 'package:shootbee/Viwes/Utils/Header.dart';
import 'package:shootbee/Viwes/Utils/MyText.dart';
import 'package:shootbee/Viwes/Utils/Service&Function.dart';

import '../Utils/MyButton.dart';
import '../Utils/MyTextFromField.dart';

class CardBuyScreen extends StatelessWidget {
  CardBuyScreen({super.key});
  TextEditingController cardControllor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 22, right: 22, top: 30, bottom: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderWidget(icon: Icons.arrow_back, appbarTitle: 'Buy Premium'),
              Utils.verticalSpacer(40),
              Container(
                height: 157,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: MyColor.brown.withOpacity(.2)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MyText(
                      text: 'Select a payment method',
                      fontcolor: MyColor.brown,
                      fontsize: 16,
                      fontweight: FontWeight.bold,
                    ),
                    Utils.verticalSpacer(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        CardWidget(
                          image: 'assets/PayPal.png',
                          w: 53,
                          h: 14,
                        ),
                        CardWidget(
                          image: 'assets/Mastercard.png',
                        ),
                        CardWidget(
                          image: 'assets/Mastercard.png',
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 40, bottom: 10),
                child: MyText(
                  text: 'Card details',
                  fontcolor: MyColor.darkGray,
                  fontsize: 12,
                  fontweight: FontWeight.w400,
                ),
              ),
              MyTextField(
                  // borderColor: MyColor.lightgrayishblue,
                  // bgColor: Colors.transparent,
                  hintText: 'Enter card details',
                  controller: cardControllor),
              Utils.verticalSpacer(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, bottom: 10),
                        child: MyText(
                          text: 'Exp date',
                          fontcolor: MyColor.darkGray,
                          fontsize: 12,
                          fontweight: FontWeight.w400,
                        ),
                      ),
                      MyTextField(
                          // borderColor: MyColor.lightgrayishblue,
                          // bgColor: Colors.transparent,
                          // width: MediaQuery.of(context).size.width * .4,
                          hintText: 'DD/MM',
                          controller: cardControllor)
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, bottom: 10),
                        child: MyText(
                          text: 'Exp date',
                          fontcolor: MyColor.darkGray,
                          fontsize: 12,
                          fontweight: FontWeight.w400,
                        ),
                      ),
                      MyTextField(
                          // borderColor: MyColor.lightgrayishblue,
                          // bgColor: Colors.transparent,
                          // width: MediaQuery.of(context).size.width * .4,
                          hintText: 'Enter CVV',
                          controller: cardControllor),
                    ],
                  )
                ],
              ),
              Spacer(),
              MyButton(
                  radius: 16,
                  // gradient: LinearGradient(
                  //     colors: [MyColor.orangeColor, MyColor.orangeColor]),
                  buttontext: 'Pay Now',
                  onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final double h, w;
  final String image;
  const CardWidget({
    required this.image,
    this.h = 33,
    this.w = 54,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      width: 84,
      decoration: BoxDecoration(
        color: MyColor.ghostWhite,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Center(
        child: Image.asset(
          image,
          height: h,
          width: w,
        ),
      ),
    );
  }
}
