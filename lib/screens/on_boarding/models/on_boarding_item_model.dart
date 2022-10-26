import 'package:flutter/material.dart';
import 'package:trivial_rush/screens/on_boarding/builders/on_board_item_builder.dart';

class OnBoardingPageItem {
  final Widget title;
  final Widget mainText;
  final Widget image;
  final Color color;

  const OnBoardingPageItem(
      {required this.title,
      required this.mainText,
      required this.image,
      required this.color});
}

class OnBoardingPageItems {
  static List<OnBoardingPageItem> loadOnBoardItem() {
    var items = <OnBoardingPageItem>[
      // Info Page 1
      infoPageItem(
          titleText: 'Game Play',
          titleColor: const Color.fromRGBO(229, 28, 0, 1),
          mainText:
              'You will receive 5 free plays a day and you can purchase additional'
              'plays that never expire.'
              'Questions are progressive,'
              'increasing in difficulty and value'
              'from easy to hard and 1 to 10 '
              'points.',
          color: Colors.red,
          image: Image.asset('assets/images/info_page_1.png')),
      // Info Page 2
      infoPageItem(
          titleText: 'Score',
          titleColor: const Color.fromRGBO(0, 153, 0, 1),
          mainText:
              'If you answer all the questions in less than 60 seconds, then your '
              'remaining time is a multiplier against your question points. But '
              'be careful: wrong answers decrease your time multiplier.',
          color: Colors.green,
          image: Image.asset('assets/images/info_page_2.png')),
      // Info Page 3
      infoPageItem(
          titleText: 'Leaderboard',
          titleColor: const Color.fromRGBO(255, 102, 0, 1),
          mainText:
              "Your best score during each 24 hour game period will appear on "
              "the Leaderboard. The highest eligible score each day will be "
              "the winner of the cash prize. Each day's prize pool will "
              "increase \$0.01 for each game played, but we will guarantee the "
              "first \$100.00.",
          color: Colors.orange,
          image: Image.asset('assets/images/info_page_3.png')),
      // Info Page 4
      infoPageItem(
          titleText: 'Clime prize',
          titleColor: const Color.fromRGBO(103, 0, 153, 1),
          mainText:
              "If you're good enough to achieve a winning score, then you'll win "
              "the cash prize pool for the day. Go to the Claim Prize screen "
              "and send us your info and we will transfer your winnings to "
              "your PayPal account. Note: you can only win once every 30 days.",
          color: Colors.white,
          image: Image.asset('assets/images/info_page_4.png')),
    ];
    return items;
  }
}
