import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/quiz_page_controller.dart';

ButtonStyle answerButtonStyle(context, snapshot, index, qIndex) {
  return TextButton.styleFrom(
    minimumSize: const Size(320, 47),
    primary:
    snapshot.data?[index]
        .answers?[qIndex]
    ['correct_answer'] ==
        false ? Colors.red : Colors.yellow,
    backgroundColor:
    snapshot.data?[index]
        .answers?[qIndex]
    ['correct_answer'] ==
        true
        ? Provider
        .of<QuizPageController>(
        context,
        listen: true)
        .color
        : Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(12.0),
        bottomRight: Radius.circular(
            12.0),
      ),
    ),
    shadowColor: Colors.black,
    elevation: 2,
  );
}