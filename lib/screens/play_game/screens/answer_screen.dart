import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trivial_rush/screens/play_game/widgets/score_page/last_page_button.dart';
import 'package:trivial_rush/screens/play_game/widgets/questions_page/question_text.dart';
import '../providers/quiz_color_controller.dart';
import '../widgets/app_bar/quiz_app_bar.dart';
import '../widgets/questions_page/answer_button_style.dart';
import '../widgets/score_page/last_page_score.dart';

Widget answerScreen(context, snapshot) {
  PageController quizPageController = PageController(initialPage: 0);

  int scoreT = 0;

  return PageView.builder(
    controller: quizPageController,
    reverse: false,
    physics: const NeverScrollableScrollPhysics(),
    itemBuilder: (BuildContext context, int index) {
      context.read<QuizColorController>().defaultColor();

      if (index < snapshot.data!.length) {
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                quizAppBar(quizPageController, context, snapshot, index),
                questionText(snapshot, index),
                Padding(
                padding: const EdgeInsets.only(
                top: 16.0,
                left: 46,
                right: 46),
                  child: snapshot.data![index].question_image_url != null ? Image
                      .network('${snapshot.data![index].question_image_url}') : SizedBox(),
                ),
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
                              context.read<QuizColorController>().changeColor(
                                  index);
                              scoreT += 10;
                            } else {
                              context.read<QuizColorController>().falseAnswer();
                            }
                            quizPageController.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.linear);
                          },
                          child: Text(
                            '${snapshot.data?[index]
                                .answers?[qIndex]['answer_text']}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              color: snapshot.data?[index].answers?[qIndex]
                              ['correct_answer'] ==
                                  true
                                  ? Provider
                                  .of<QuizColorController>(context,
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
              ],
            ),
          ),
        );
      } else {
        return Container(
          width: MediaQuery
              .of(context)
              .size
              .width,
          height: MediaQuery
              .of(context)
              .size
              .height,
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
