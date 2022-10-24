import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'countdown_items.dart';

class GameStartCountdown extends StatelessWidget {
  GameStartCountdown({Key? key}) : super(key: key);

  int totalPages = CountDownItems.loadCountDownItem().length;
  var currentPage = 0;

  @override
  Widget build(BuildContext context) {
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

          CountDownItem countDownPages = CountDownItems.loadCountDownItem()[index];
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