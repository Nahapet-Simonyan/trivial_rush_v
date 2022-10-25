import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trivial_rush/screens/play_game/widgets/score_page/last_page_button.dart';
import 'package:trivial_rush/screens/play_game/widgets/questions_page/question_check.dart';
import 'package:trivial_rush/screens/play_game/widgets/questions_page/question_text.dart';
import '../providers/quiz_page_controller.dart';
import '../widgets/app_bar/quiz_app_bar.dart';
import '../widgets/score_page/last_page_score.dart';

Widget answerScreen(snapshot, controller) {
  int scoreT = 0;
  return PageView.builder(
    controller: controller,
    reverse: false,
    physics: const NeverScrollableScrollPhysics(),
    itemBuilder: (BuildContext context, int index) {
      context.read<QuizPageController>().defaultColor();
      if (index < snapshot.data!.length) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            quizAppBar(context, snapshot, index),
            questionText(snapshot, index),
            questionCheck(context, snapshot, index, scoreT, controller),
            const Expanded(child: SizedBox()),
          ],
        );
      } else {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: const Color.fromRGBO(0, 153, 0, 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              lastPageScore(scoreT),
              lastPageGoToHomePageButton(context),
            ],
          ),
        );
      }
    },
  );
}