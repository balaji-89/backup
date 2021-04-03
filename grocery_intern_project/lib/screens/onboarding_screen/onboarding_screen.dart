import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grocery_intern_project/screens/UI_screens/home_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent));
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final introKey = GlobalKey<IntroductionScreenState>();
    final titleTextStyle = TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w700,
      color: Theme.of(context).primaryColor,
      letterSpacing: 0.4,
    );
    final bodyTextStyle = TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w400,
        color: Colors.black45,
        letterSpacing: 0.4);

    final onBoardingPages = [
      PageViewModel(
        title: 'Grocery shop',
        body: 'welcome to world of shopping and\n purchase whatever you want',
        image: Image.asset(
            'assets/images/onboarding_images/undraw_shopping_app_flsj.png'),
        decoration: PageDecoration(
          descriptionPadding: EdgeInsets.symmetric(horizontal: 17),
          titleTextStyle: titleTextStyle,
          bodyTextStyle: bodyTextStyle,
          pageColor: Theme.of(context).backgroundColor,
        ),
      ),
      PageViewModel(
        title: 'Discounts and Offers',
        body: 'Enjoy shopping with unique discounts and offers',
        image: Image.asset(
            'assets/images/onboarding_images/undraw_successful_purchase_uyin.png'),
        decoration: PageDecoration(
          descriptionPadding: EdgeInsets.symmetric(horizontal: 13),
          titleTextStyle: titleTextStyle,
          bodyTextStyle: bodyTextStyle,
          pageColor: Theme.of(context).backgroundColor,
        ),
      ),
      PageViewModel(
        title: 'Free delivery',
        body: 'we are offering free delieveries over thousand rupees',
        image: Image.asset(
            'assets/images/onboarding_images/undraw_deliveries_131a.png'),
        decoration: PageDecoration(
          descriptionPadding: EdgeInsets.symmetric(horizontal: 15),
          titleTextStyle: titleTextStyle,
          bodyTextStyle: bodyTextStyle,
          pageColor: Theme.of(context).backgroundColor,
        ),
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: mediaQueryHeight,
        width: mediaQueryWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: SizedBox(),
            ),
            Expanded(
              flex: 4,
              child: IntroductionScreen(
                key: introKey,
                pages: onBoardingPages,
                onDone: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ), //MaterialPageRoute
                  );
                },
                showSkipButton: true,
                animationDuration: 700,
                dotsFlex: 2,
                curve: Curves.easeInCirc,
                skipFlex: 1,
                skip: const Text(
                  'Skip',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                done: const Text(
                  'Done',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                dotsDecorator: DotsDecorator(
                    activeColor: Theme.of(context).primaryColor,
                    color: Colors.grey,
                    activeSize: Size(22, 10),
                    activeShape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(20, 20)))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
