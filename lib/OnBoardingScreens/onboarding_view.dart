import 'dart:async';

import 'package:flutter/material.dart';
import 'package:neo_pay/OnBoardingScreens/onboarding_getstarted.dart';
import 'package:neo_pay/global/colors.dart';
import 'package:neo_pay/main.dart';

class OnboardingView1 extends StatefulWidget {
  const OnboardingView1({super.key});

  @override
  State<OnboardingView1> createState() => _OnboardingView1State();
}

class _OnboardingView1State extends State<OnboardingView1> {
  PageController _mypagecontroller = PageController();
  int _selected_onboard = 0;
  int _currentPage = 0;

  List<Map<String, dynamic>> pages = [
    {
      'image': "assets/images/onboarding1.png",
      'image_size': displaysize.height * .19,
      'title': 'Send Money Across\nthe Globe',
      'subtitle':
          'Transfer money instantly, anytime, anywhere-fast,\nSecure, and hassle-free.'
    },
    {
      'image': "assets/images/onboarding2.png",
      'image_size': displaysize.height * .25,
      'title': 'Track  Control Your\nSpending',
      'subtitle':
          'Set monthly limits and get insights on where your\nmoney goes.'
    },
    {
      'image': "assets/images/onboarding3.png",
      'image_size': displaysize.height * .25,
      'title': 'Secure & Seamless\nTransactions',
      'subtitle':
          'Your money is safe with bank-grade security and instant\ntransfers.'
    }
  ];

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentPage < pages.length - 1) {
        _currentPage++;
        _mypagecontroller.animateToPage(
          _currentPage,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      } else {
        _currentPage = 0;
        _mypagecontroller.animateToPage(
          _currentPage,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _mypagecontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(height: displaysize.height * .02),
                  Text(
                    "Welcome to",
                    style: TextStyle(
                        color: app_theme_blue,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'general_sans',
                        fontSize: displaysize.width * .08),
                  ),
                  SizedBox(height: displaysize.height * .03),
                  Image.asset(
                    "assets/images/logo.png",
                    height: displaysize.height * .075,
                  ),
                ],
              ),
              SizedBox(
                height: displaysize.height * .01,
              ),
              SizedBox(
                height: displaysize.height * .2,
                child: AnimatedSwitcher(
                    duration: Duration(milliseconds: 500),
                    transitionBuilder:
                        (Widget child, Animation<double> animation) {
                      return FadeTransition(opacity: animation, child: child);
                    },
                    child: Image.asset(
                      key: UniqueKey(),
                      pages[_selected_onboard]['image'],
                      width: pages[_selected_onboard]['image_size'],
                    )),
              ),
              Column(
                children: [
                  SizedBox(
                    height: displaysize.height * .2,
                    width: displaysize.width,
                    child: PageView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      onPageChanged: (value) {
                        setState(() {
                          _selected_onboard = value;
                        });
                      },
                      itemCount: pages.length,
                      controller: _mypagecontroller,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                pages[index]['title'],
                                style: TextStyle(
                                    color: app_theme_blue,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'general_sans',
                                    fontSize: displaysize.width * .075),
                              ),
                              Text(pages[index]['subtitle'],
                                  style: TextStyle(
                                      fontSize: displaysize.width * .035,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'general_sans',
                                      color: app_theme_blue2)),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: displaysize.height * .02),
                  SizedBox(
                    height: 5,
                    width: 40,
                    child: ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 2),
                          height: 5,
                          width: index == _selected_onboard ? 20 : 5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: index == _selected_onboard
                                  ? Color.fromRGBO(104, 168, 255, 1)
                                  : Color.fromRGBO(204, 204, 204, 1)),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: displaysize.height * .03),
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar: GetStarted(context));
  }
}
