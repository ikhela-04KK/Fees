// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cryto_wallet_3/constants/colors.dart';
import 'package:cryto_wallet_3/home_page.dart';
import 'package:cryto_wallet_3/pages/intro_screen/intro_one.dart';
import 'package:cryto_wallet_3/pages/intro_screen/intro_three.dart';
import 'package:cryto_wallet_3/pages/intro_screen/intro_two.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {

  final PageController controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Stack(
          children: [
            PageView(
              controller: controller,
              children: [IntroOne(), IntroTwo(), IntroThree()],

              // verifed if on last page
              onPageChanged: (index) {
                setState(() {
                  onLastPage = (index == 2);
                });
              },
            ),
            Container(
              alignment: Alignment(0, 0.75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      controller.jumpToPage(2);
                    },
                    child: Text("retour"),
                  ),

                  SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect: SlideEffect(
                      dotColor: secondColor,
                      activeDotColor: primaryColor, 
                      strokeWidth: 0.5
                    ),
                  ),

                  // if onLastPage display done
                  onLastPage
                      ? GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context, 
                              MaterialPageRoute(builder: (context){
                                return HomePage();
                              })
                            );
                          },
                          child: Text("terminer"),
                        )
                      : GestureDetector(
                          onTap: () {
                            controller.nextPage(
                                duration: Duration(microseconds: 500),
                                curve: Curves.easeIn);
                          },
                          child: Text("suivant"),
                        )
                ],
              ),
            )
          ],
        ));
  }
}
