import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trivial_rush/screens/play_game/providers/countdown_provider.dart';
import 'package:trivial_rush/screens/play_game/providers/quiz_provider.dart';
import '../../../core/models/quiz_model/quiz.dart';
import 'answer_screen.dart';
import '../models/countdown_items.dart';

Widget gameStartCountDown(
    {required BuildContext context,
    required AsyncSnapshot<List<Quiz>> snapshot}) {
  //
  var countdownItems = CountDownItems(context, snapshot);
  var provider = context.read<CountdownProvider>();
  var loadCountDownItem = countdownItems.loadCountDownItem();
  int currentIndex = context.watch<CountdownProvider>().currentIndex;
  context.read<QuizProvider>().score = 0;

  return CarouselSlider.builder(
    itemCount: loadCountDownItem.length,
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
          ///
          provider.changeIndex(index);
          if (index == loadCountDownItem.length - 1) {
            ///
            provider.stopPlay();
          }
        }),
    itemBuilder: (BuildContext context, int index, realIndex) {
      ///
      CountDownItem countDownPages = loadCountDownItem[index];

      ///
      if (currentIndex != loadCountDownItem.length - 1) {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: countDownPages.color,
          child: Center(
            child: countDownPages.text,
          ),
        );
      } else {
        provider.defaultIndex();

        return answerScreen(context: context, snapshot: snapshot);
      }
    },
  );
}
