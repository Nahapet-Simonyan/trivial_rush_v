import 'package:flutter/material.dart';

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