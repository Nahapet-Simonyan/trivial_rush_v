import 'package:flutter/material.dart';

Widget onBoardingPage(onBoardPages, int index) {
  return SingleChildScrollView(
    child: Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 10),
          child: onBoardPages[index].title,
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: onBoardPages[index].mainText,
        ),
        onBoardPages[index].image,
      ],
    ),
  );
}