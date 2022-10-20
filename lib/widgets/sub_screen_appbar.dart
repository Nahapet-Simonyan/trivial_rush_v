import 'package:flutter/material.dart';

PreferredSizeWidget subScreenAppBar(
    {required BuildContext context,
    required Color backgroundColor,
    required Color itemsColor,
    required String text}) {
  return AppBar(
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
    centerTitle: true,
    title: Text(
      text,
      style: TextStyle(
        fontFamily: 'AmericanTypeWriter',
        fontSize: 24,
        color: itemsColor,
      ),
    ),
    backgroundColor: backgroundColor,
  );
}
