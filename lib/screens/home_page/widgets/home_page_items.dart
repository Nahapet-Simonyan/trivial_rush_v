import 'package:flutter/material.dart';

Widget homePageItems({
  required Color containerColor,
  required BorderRadius borderRadius,
  required String imageAsset,
  required String text,
}) {
  return Container(
    width: 153,
    height: 153,
    decoration: BoxDecoration(
      color: containerColor,
      borderRadius: borderRadius,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imageAsset),
        Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            fontFamily: 'AmericanTypeWriter',
            fontWeight: FontWeight.w100,
            decoration: TextDecoration.none,
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}
