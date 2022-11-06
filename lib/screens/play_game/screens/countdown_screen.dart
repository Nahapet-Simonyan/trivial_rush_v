import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trivial_rush/screens/play_game/providers/countdown_provider.dart';
import '../../../core/models/quiz_model/quiz.dart';
import 'answer_screen.dart';
import '../models/countdown_items.dart';

Widget gameStartCountDown(
    {required BuildContext context,
    required AsyncSnapshot<List<Quiz>> snapshot}) {
  //
  int totalPages = CountDownItems(context, snapshot).loadCountDownItem().length;
  int currentIndex =
      Provider.of<CountdownProvider>(context, listen: true).currentIndex;

  return CarouselSlider.builder(
    itemCount: totalPages,
    options: CarouselOptions(
        scrollPhysics: const NeverScrollableScrollPhysics(),
        pauseAutoPlayInFiniteScroll: false,
        pauseAutoPlayOnManualNavigate: false,
        pauseAutoPlayOnTouch: false,
        height: MediaQuery.of(context).size.height,
        autoPlay: Provider.of<CountdownProvider>(context).autoplay,
        autoPlayInterval: const Duration(seconds: 1),
        autoPlayAnimationDuration: const Duration(microseconds: 100),
        reverse: false,
        viewportFraction: 1,
        onPageChanged: (index, reason) {
          Provider.of<CountdownProvider>(context, listen: false)
              .changeIndex(index);
          if (index == CountDownItems(context, snapshot).loadCountDownItem().length - 1) {
            Provider.of<CountdownProvider>(context, listen: false).stopPlay();
          }
        }),
    itemBuilder: (BuildContext context, int index, realIndex) {
      CountDownItem countDownPages = CountDownItems(context, snapshot).loadCountDownItem()[index];
      if (currentIndex != CountDownItems(context, snapshot).loadCountDownItem().length - 1) {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: countDownPages.color,
          child: Center(
            child: countDownPages.text,
          ),
        );
      } else {
        Provider.of<CountdownProvider>(context, listen: false).defaultIndex();

        return answerScreen(context: context, snapshot: snapshot);
      }
    },
  );
}
