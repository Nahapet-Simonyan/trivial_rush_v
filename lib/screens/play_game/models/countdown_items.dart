import 'dart:core';
import 'package:flutter/material.dart';
import '../../../core/models/quiz_model/quiz.dart';

class CountDownItem {
  final Widget text;
  final Color color;

  CountDownItem(
      {required this.text,
      required this.color,});
}

class CountDownItems {
  final BuildContext context;
  final AsyncSnapshot<List<Quiz>> snapshot;

  CountDownItems(this.context, this.snapshot);

  List loadCountDownItem() {
    var items = [
      CountDownItem(
        text: const Text(
          '5',
          style: TextStyle(
            color: Colors.white,
            decoration: TextDecoration.none,
            fontSize: 96,
            fontFamily: 'AmericanTypeWriter',
          ),
        ),
        color: const Color.fromRGBO(0, 51, 204, 1),
      ),
      CountDownItem(
        text: const Text(
          '4',
          style: TextStyle(
            color: Colors.white,
            decoration: TextDecoration.none,
            fontSize: 96,
            fontFamily: 'AmericanTypeWriter',
          ),
        ),
        color: const Color.fromRGBO(255, 204, 0, 1),
      ),
      CountDownItem(
        text: const Text(
          '3',
          style: TextStyle(
            color: Colors.white,
            decoration: TextDecoration.none,
            fontSize: 96,
            fontFamily: 'AmericanTypeWriter',
          ),
        ),
        color: const Color.fromRGBO(0, 153, 0, 1),
      ),
      CountDownItem(
        text: const Text(
          '2',
          style: TextStyle(
            color: Colors.white,
            decoration: TextDecoration.none,
            fontSize: 96,
            fontFamily: 'AmericanTypeWriter',
          ),
        ),
        color: const Color.fromRGBO(255, 102, 0, 1),
      ),
      CountDownItem(
        text: const Text(
          '1',
          style: TextStyle(
            color: Colors.white,
            decoration: TextDecoration.none,
            fontSize: 96,
            fontFamily: 'AmericanTypeWriter',
          ),
        ),
        color: const Color.fromRGBO(103, 0, 153, 1),
      ),
      CountDownItem(
        text: const Text(
          'GO!',
          style: TextStyle(
            color: Colors.white,
            decoration: TextDecoration.none,
            fontSize: 96,
            fontFamily: 'AmericanTypeWriter',
          ),
        ),
        color: const Color.fromRGBO(0, 153, 0, 1),
      ),
      CountDownItem(
        text: const Text(
          '',
          style: TextStyle(
            color: Colors.white,
            decoration: TextDecoration.none,
            fontSize: 96,
            fontFamily: 'AmericanTypeWriter',
          ),
        ),
        color: Colors.white,
      ),
    ];
    return items;
  }
}
