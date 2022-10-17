import 'package:flutter/material.dart';

import '../widgets/countdown_items.dart';

class GameStartCountdown extends StatefulWidget {
  const GameStartCountdown({Key? key}) : super(key: key);

  @override
  State<GameStartCountdown> createState() => _GameStartCountdownState();
}

class _GameStartCountdownState extends State<GameStartCountdown> {

  @override
  Widget build(BuildContext context) {
    int totalPages = CountDownItems.loadCountdounItem().length;
    return PageView.builder(
        itemCount: totalPages,
        itemBuilder: (BuildContext context, int index) {
          CountDownItem countDownPages = CountDownItems.loadCountdounItem()[index];
          return Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: countDownPages.color,
            child: Center(
              child: countDownPages.text,
            ),
          );
        });
  }
}
