import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../on_board_page/provider/page_view_controller.dart';

Widget countdownScreen(context) {
  PageController controller =
      Provider.of<PageControllerProvider>(context, listen: true).page;
  return PageView(
    controller: controller,
    physics: const NeverScrollableScrollPhysics(),
    children: [
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: const Color.fromRGBO(255, 102, 0, 1),
        child: const Text(
          'Get Ready',
          style: TextStyle(
            color: Colors.white,
            decoration: TextDecoration.none,
            fontSize: 48,
            fontFamily: 'AmericanTypeWriter',
          ),
        ),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: const Color.fromRGBO(255, 102, 0, 1),
        child: const Text(
          'Get Ready',
          style: TextStyle(
            color: Colors.white,
            decoration: TextDecoration.none,
            fontSize: 48,
            fontFamily: 'AmericanTypeWriter',
          ),
        ),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: const Color.fromRGBO(255, 102, 0, 1),
        child: const Text(
          'Get Ready',
          style: TextStyle(
            color: Colors.white,
            decoration: TextDecoration.none,
            fontSize: 48,
            fontFamily: 'AmericanTypeWriter',
          ),
        ),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: const Color.fromRGBO(255, 102, 0, 1),
        child: const Text(
          'Get Ready',
          style: TextStyle(
            color: Colors.white,
            decoration: TextDecoration.none,
            fontSize: 48,
            fontFamily: 'AmericanTypeWriter',
          ),
        ),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: const Color.fromRGBO(255, 102, 0, 1),
        child: const Text(
          'Get Ready',
          style: TextStyle(
            color: Colors.white,
            decoration: TextDecoration.none,
            fontSize: 48,
            fontFamily: 'AmericanTypeWriter',
          ),
        ),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: const Color.fromRGBO(255, 102, 0, 1),
        child: const Text(
          'Get Ready',
          style: TextStyle(
            color: Colors.white,
            decoration: TextDecoration.none,
            fontSize: 48,
            fontFamily: 'AmericanTypeWriter',
          ),
        ),
      ),
    ],
  );
}