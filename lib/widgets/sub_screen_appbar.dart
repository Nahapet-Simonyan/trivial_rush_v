import 'package:flutter/material.dart';

/// Created by Nahapet
/// Date: 14.10.22
///
/// Create an AppBar widget
///
PreferredSizeWidget subScreenAppBar(
    {required BuildContext context,
    required Color backgroundColor,
    required Color itemsColor,
    required String text}) {
  //
  return AppBar(
    backgroundColor: backgroundColor,
    centerTitle: true,
    title: Text(
      text,
      style: TextStyle(
        fontFamily: 'AmericanTypeWriter',
        fontSize: 24,
        color: itemsColor,
      ),
    ),
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(
        Icons.chevron_left,
        size: 30,
        color: itemsColor,
      ),
    ),
  );
}
