import 'package:flutter/material.dart';

/// Created by Nahapet
/// Date: 14.10.22

/// Create a TextButton widget

Widget generalButton(
    {required double width,
    required double height,
    required Color color,
    required String text,
    required double fontSize,
    String? fontFamily}) {
  //
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: color,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20.0),
        bottomRight: Radius.circular(20.0),
      ),
    ),
    child: Center(
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: fontSize,
          fontFamily: fontFamily,
        ),
      ),
    ),
  );
}
