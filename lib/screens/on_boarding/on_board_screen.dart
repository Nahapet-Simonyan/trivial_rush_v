import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:trivial_rush/screens/on_boarding/models/on_boarding_item_model.dart';
import 'package:trivial_rush/screens/on_boarding/provider/page_view_controller.dart';
import 'package:trivial_rush/widgets/general_button.dart';
import '../home_page/home_page_screen.dart';
import 'builders/on_board_page_builder.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var onBoardPages = OnBoardingPageItems.loadOnBoardItem();

    int pageIndex =
        Provider.of<PageControllerProvider>(context, listen: true).pageIndex;

    PageController pageController =
        Provider.of<PageControllerProvider>(context, listen: true).page;

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 59),
        child: PageView(
          controller: pageController,
          onPageChanged: (index) =>
              Provider.of<PageControllerProvider>(context, listen: false)
                  .changePage(index),
          children: [
            onBoardingPage(onBoardPages, 0),
            onBoardingPage(onBoardPages, 1),
            onBoardingPage(onBoardPages, 2),
            onBoardingPage(onBoardPages, 3),
          ],
        ),
      ),
      bottomSheet: pageController.initialPage == 3
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
                    child: generalButton(
                        width: 141.0,
                        height: 41.0,
                        color: Colors.purple,
                        text: 'Go To HomePage',
                        fontSize: 14.0,
                        fontFamily: 'Sans Serif'),
                  ),
                ),
              ),
            )

          // Indicator
          : SizedBox(
              height: 59,
              child: Center(
                child: SmoothPageIndicator(
                  controller: pageController,
                  count: 4,
                  effect: WormEffect(
                    activeDotColor: onBoardPages[pageIndex].color,
                    dotColor: const Color.fromRGBO(196, 196, 196, 1),
                    dotWidth: 12,
                    dotHeight: 12,
                  ),
                  // onDotClicked: (index) => ,
                ),
              ),
            ),
    );
  }
}
