import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trivial_rush/screens/play_game/widgets/score_page/last_page_button.dart';
import 'package:trivial_rush/screens/play_game/widgets/questions_page/question_text.dart';
import '../providers/countdown_controller.dart';
import '../providers/quiz_page_controller.dart';
import '../widgets/app_bar/quiz_app_bar.dart';
import '../widgets/questions_page/answer_button_style.dart';
import '../widgets/score_page/last_page_score.dart';

Widget answerScreen(context, snapshot, controller) {
  Provider.of<CountdownController>(context, listen: false).changeIndex(0);
  Provider.of<CountdownController>(context, listen: false).changeAutoPlay(true);
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
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: snapshot.data?[index].answers?.length,
                itemBuilder: (BuildContext context, int qIndex) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      top: 16.0,
                      left: 46,
                      right: 46,
                    ),
                    child: TextButton(
                      style:
                          answerButtonStyle(context, snapshot, index, qIndex),
                      onPressed: () {
                        if (snapshot.data?[index].answers?[qIndex]
                                ['correct_answer'] ==
                            true) {
                          context.read<QuizPageController>().changeColor(index);
                          scoreT += 10;
                        } else {
                          context.read<QuizPageController>().falseAnswer();
                        }
                        controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.linear);
                      },
                      child: Text(
                        '${snapshot.data?[index].answers?[qIndex]['answer_text']}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: snapshot.data?[index].answers?[qIndex]
                                      ['correct_answer'] ==
                                  true
                              ? Provider.of<QuizPageController>(context,
                                      listen: true)
                                  .textColor
                              : const Color.fromRGBO(74, 74, 74, 1),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
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
