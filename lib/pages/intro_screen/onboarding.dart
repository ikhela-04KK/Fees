// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fees/constants/colors.dart';
import 'package:fees/pages/home_page/home_page.dart';
import 'package:fees/pages/intro_screen/intro_one.dart';
import 'package:fees/pages/intro_screen/intro_three.dart';
import 'package:fees/pages/intro_screen/intro_two.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:fees/pages/wallet/screen/options.dart';

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
                    child: Text(
                      "retour",
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                  ),

                  SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect: WormEffect(
                      dotColor: secondColor,
                      activeDotColor: primaryColor, 
                      strokeWidth: 0.5,
                      dotHeight: 10,
                      dotWidth: 20
                    ),
                  ),

                  // if onLastPage display done
                  onLastPage
                      ? GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context, 
                              MaterialPageRoute(builder: (context){
                                return OptionScreen();
                              })
                            );
                          },
                          child: Text(
                            "terminer", 
                            style:TextStyle(
                              color: Colors.white
                            ) ,
                            ),
                        )
                      : GestureDetector(
                          onTap: () {
                            controller.nextPage(
                                duration: Duration(microseconds: 500),
                                curve: Curves.easeIn);
                          },
                          child: Text(
                            "suivant", 
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),
                        )
                ],
              ),
            )
          ],
        ));
  }
}
