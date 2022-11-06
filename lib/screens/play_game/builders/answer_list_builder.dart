import 'package:flutter/material.dart';

import '../../../core/models/quiz_model/quiz.dart';
import '../providers/quiz_provider.dart';
import '../widgets/question_text.dart';

Widget answersListBuilder (
    {required List<Quiz> data,
    required int index,
    required AsyncSnapshot<List<Quiz>> snapshot,
    required QuizProvider provider,
    required PageController quizPageController}) {
  return ListView.builder(
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
    itemCount: data[index].answers?.length,
    itemBuilder: (BuildContext context, int qIndex) {
      return Padding(
        padding: const EdgeInsets.only(
          top: 16.0,
          left: 46,
          right: 46,
        ),
        child: TextButton(
          style: answerButtonStyle(
              context, data, index, qIndex),
          onPressed: () {
            if (data[index].answers?[qIndex]
            ['correct_answer'] ==
                true) {
              provider.changeColor(index);
              provider.changeScore(10);
            } else {
              provider.falseAnswer();
            }
            quizPageController.nextPage(
                duration:
                const Duration(milliseconds: 500),
                curve: Curves.linear);
          },
          child: Text(
            '${data[index].answers?[qIndex]['answer_text']}',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
              color: data[index].answers?[qIndex]
              ['correct_answer'] ==
                  true
                  ? provider.textColor
                  : const Color.fromRGBO(74, 74, 74, 1),
            ),
          ),
        ),
      );
    },
  );
}