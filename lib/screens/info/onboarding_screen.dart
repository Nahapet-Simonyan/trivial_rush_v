import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:trivial_rush/widgets/info_page_items.dart';

import '../home_page/home_page_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var onBoardPages = InfoPageItems.loadOnBoardItem();

  final controller = PageController();
  bool isLastPage = false;

  int activePage = 0;

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 59),
        child: PageView(
          controller: controller,
          onPageChanged: (index) {
            setState(() {
              activePage = index;
            });
          },
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 10),
                    child: onBoardPages[0].title,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: onBoardPages[0].mainText,
                  ),
                  onBoardPages[0].image,
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 10),
                    child: onBoardPages[1].title,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: onBoardPages[1].mainText,
                  ),
                  onBoardPages[1].image,
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 10),
                    child: onBoardPages[2].title,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: onBoardPages[2].mainText,
                  ),
                  onBoardPages[2].image,
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 10),
                    child: onBoardPages[3].title,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: onBoardPages[3].mainText,
                  ),
                  onBoardPages[3].image,
                ],
              ),
            ),
          ],
        ),
      ),

/* --- Bottom Page Indicator --- */

      bottomSheet: activePage == 3

// Go To Home Page Button

          ? SizedBox(
              height: 50,
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                        (route) => false,
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Container(
                      width: 141,
                      height: 41,
                      decoration: const BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'Go To HomePage',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Sans Serif',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          :

// Indicator

          SizedBox(
              height: 59,
              child: Center(
                child: SmoothPageIndicator(
                  controller: controller,
                  count: 4,
                  effect: WormEffect(
                    activeDotColor: onBoardPages[activePage].color,
                    dotColor: const Color.fromRGBO(196, 196, 196, 1),
                    dotWidth: 12,
                    dotHeight: 12,
                  ),
                  onDotClicked: (index) => controller.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.linear,
                  ),
                ),
              ),
            ),
    );
  }
}
