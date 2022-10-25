import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trivial_rush/screens/play_game/providers/countdown_controller.dart';
import 'answer_screen.dart';
import '../widgets/count_down_items/countdown_items.dart';

Widget gameStartCountDown(context, snapshot, controller) {
  int totalPages = CountDownItems.loadCountDownItem().length;
  int currentIndex = Provider.of<CountdownController>(context, listen: true).currentIndex;

  return CarouselSlider.builder(
    itemCount: totalPages,
    options: CarouselOptions(
        scrollPhysics: const NeverScrollableScrollPhysics(),
        pauseAutoPlayInFiniteScroll: false,
        pauseAutoPlayOnManualNavigate: false,
        pauseAutoPlayOnTouch: false,
        height: MediaQuery.of(context).size.height,
        autoPlay: Provider.of<CountdownController>(context).autoplay,
        autoPlayInterval: const Duration(seconds: 1),
        autoPlayAnimationDuration: const Duration(microseconds: 100),
        reverse: false,
        viewportFraction: 1,
        onPageChanged: (index, reason) {
          Provider.of<CountdownController>(context, listen: false).changeIndex(index);
          if (index == CountDownItems.loadCountDownItem().length - 1) {
            Provider.of<CountdownController>(context, listen: false).stopPlay();
          }
        }),
    itemBuilder: (BuildContext context, int index, realIndex) {
      CountDownItem countDownPages = CountDownItems.loadCountDownItem()[index];
      if(currentIndex != CountDownItems.loadCountDownItem().length - 1) {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: countDownPages.color,
          child: Center(
            child: countDownPages.text,
          ),
        );
      } else {
        return answerScreen(snapshot, controller);
      }
    },
  );
}
