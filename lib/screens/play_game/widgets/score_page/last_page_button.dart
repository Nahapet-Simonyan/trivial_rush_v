import 'package:flutter/material.dart';

import '../../../home_page/home_page_screen.dart';

Widget lastPageGoToHomePageButton(context) {
  return TextButton(
    style: TextButton.styleFrom(
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(12.0),
          bottomLeft: Radius.circular(12.0),
        ),
      ),
    ),
    onPressed: () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ),
          (route) => false);
    },
    child: const Text(
      'GO TO HOMEPAGE',
      style: TextStyle(
        fontSize: 20,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
    ),
  );
}
