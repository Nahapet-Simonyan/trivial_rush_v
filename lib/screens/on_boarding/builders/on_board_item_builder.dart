import 'package:flutter/material.dart';

import '../models/on_boarding_item_model.dart';

OnBoardingPageItem infoPageItem(
    {required String titleText,
    required Color titleColor,
    required String mainText,
    required Color color,
    required Image image}) {
  //
  return OnBoardingPageItem(
    title: Text(
      titleText,
      style: TextStyle(
        color: titleColor,
        fontSize: 34,
      ),
    ),
    mainText: Text(
      mainText,
      style: const TextStyle(
        fontSize: 22,
        color: Color.fromRGBO(74, 74, 74, 1),
      ),
    ),
    color: color,
    image: image,
  );
}