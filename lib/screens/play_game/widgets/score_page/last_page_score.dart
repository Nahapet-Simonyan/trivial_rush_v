import 'package:flutter/material.dart';

Widget lastPageScore(scoreT) {
  return SizedBox(
    height: 130,
    child: Column(
      children: [
        const Text(
          'Score',
          style: TextStyle(
            fontSize: 30,
            fontFamily: 'AmericanTypeWriter',
            color: Colors.white,
          ),
        ),
        Text(
          '$scoreT',
          style: const TextStyle(
            fontSize: 72,
            fontFamily: 'AmericanTypeWriter',
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}