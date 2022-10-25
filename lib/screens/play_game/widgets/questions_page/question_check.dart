import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/quiz_page_controller.dart';
import 'answer_button_style.dart';

Widget questionCheck(context, snapshot, index, scoreT, controller) {
  return Padding(
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
  );
}