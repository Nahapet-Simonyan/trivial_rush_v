import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'countdown_items.dart';

class GameStartCountdown extends StatefulWidget {
  const GameStartCountdown({Key? key}) : super(key: key);

  @override
  State<GameStartCountdown> createState() => _GameStartCountdownState();
}

class _GameStartCountdownState extends State<GameStartCountdown> {
  var currentPage = 0;


  @override
  Widget build(BuildContext context) {
    int totalPages = CountDownItems.loadCountdounItem().length;
    return CarouselSlider.builder(
        itemCount: totalPages,
        options: CarouselOptions(
          height: MediaQuery.of(context).size.height,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 1),
          reverse: false,
          viewportFraction: 1,
        ),
        itemBuilder: (BuildContext context, int index, realIndex) {
          CountDownItem countDownPages = CountDownItems.loadCountdounItem()[index];
          currentPage = index;
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
