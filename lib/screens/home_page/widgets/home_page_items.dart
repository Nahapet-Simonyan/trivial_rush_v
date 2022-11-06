import 'package:flutter/material.dart';

/// Created by Nahapet
/// Date: 14.10.22

/// Create a Home Page items container model

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
        /// Container Image
        Image.asset(imageAsset),

        /// Container Text
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
