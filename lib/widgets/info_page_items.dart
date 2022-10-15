import 'package:flutter/material.dart';

class InfoPageItem {
  final Widget title;
  final Widget mainText;
  final Widget image;
  final Color color;

  const InfoPageItem(
      {required this.title,
      required this.mainText,
      required this.image,
      required this.color});
}

// *********** Info Page 1 *****************************************************

class InfoPageItems {
  static List<InfoPageItem> loadOnBoardItem() {
    var items = <InfoPageItem>[
      InfoPageItem(
        title: const Text(
          'Game Play',
          style: TextStyle(
            color: Color.fromRGBO(229, 28, 0, 1),
            fontSize: 34,
          ),
        ),
        mainText: const Text(
          'You will receive 5 free plays a day and you can purchase additional'
          'plays that never expire.'
          'Questions are progressive,'
          'increasing in difficulty and value'
          'from easy to hard and 1 to 10 '
          'points.',
          style: TextStyle(
            fontSize: 22,
            color: Color.fromRGBO(74, 74, 74, 1),
          ),
        ),
        color: Colors.red,
        image: Image.asset('assets/images/info_page_1.png'),
      ),

// *********** Info Page 2 *****************************************************

      InfoPageItem(
        title: const Text(
          'Score',
          style: TextStyle(
            color: Color.fromRGBO(0, 153, 0, 1),
            fontSize: 34,
          ),
        ),
        mainText: const Text(
          'If you answer all the questions in less than 60 seconds, then your '
          'remaining time is a multiplier against your question points. But '
          'be careful: wrong answers decrease your time multiplier.',
          style: TextStyle(
            fontSize: 22,
            color: Color.fromRGBO(74, 74, 74, 1),
          ),
        ),
        color: Colors.green,
        image: SizedBox(
          child: Image.asset('assets/images/info_page_2.png'),
        ),
      ),

// *********** Info Page 3 *****************************************************

      InfoPageItem(
        title: const Text(
          'Leaderboard',
          style: TextStyle(
            color: Color.fromRGBO(255, 102, 0, 1),
            fontSize: 34,
          ),
        ),
        mainText: const Text(
          "Your best score during each 24 hour game period will appear on "
          "the Leaderboard. The highest eligible score each day will be "
          "the winner of the cash prize. Each day's prize pool will "
          "increase \$0.01 for each game played, but we will guarantee the "
          "first \$100.00.",
          style: TextStyle(
            fontSize: 22,
            color: Color.fromRGBO(74, 74, 74, 1),
          ),
        ),
        color: Colors.orange,
        image: FractionallySizedBox(
          widthFactor: 1.0,
          child: Image.asset('assets/images/info_page_3.png',),
        ),
      ),

// *********** Info Page 4 *****************************************************

      InfoPageItem(
        title: const Text(
          'Clime prize',
          style: TextStyle(
            color: Color.fromRGBO(103, 0, 153, 1),
            fontSize: 34,
          ),
        ),
        mainText: const Text(
          "If you're good enough to achieve a winning score, then you'll win "
          "the cash prize pool for the day. Go to the Claim Prize screen "
          "and send us your info and we will transfer your winnings to "
          "your PayPal account. Note: you can only win once every 30 days.",
          style: TextStyle(
            fontSize: 22,
            color: Color.fromRGBO(74, 74, 74, 1),
          ),
        ),
        color: Colors.white,
        image: SizedBox(
          child: Image.asset('assets/images/info_page_4.png'),
        ),
      ),
    ];
    return items;
  }
}
