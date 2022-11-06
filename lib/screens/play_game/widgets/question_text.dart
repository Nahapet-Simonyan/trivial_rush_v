import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/quiz_provider.dart';

Widget questionText(snapshot, index) {
  return Padding(
    padding: const EdgeInsets.only(top: 20.0, left: 40, right: 40),
    child: SizedBox(
      child: Center(
        child: Text(
          '${snapshot.data?[index].question_text}',
          style: const TextStyle(
            fontSize: 18,
            fontFamily: 'Roboto',
            color: Color.fromRGBO(74, 74, 74, 1),
          ),
        ),
      ),
    ),
  );
}

ButtonStyle answerButtonStyle(context, data, index, qIndex) {
  return TextButton.styleFrom(
    minimumSize: const Size(320, 47),
    primary:
    data[index]
        .answers?[qIndex]
    ['correct_answer'] ==
        false ? Colors.red : Colors.yellow,
    backgroundColor:
    data[index]
        .answers?[qIndex]
    ['correct_answer'] ==
        true
        ? Provider
        .of<QuizProvider>(
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