import 'package:flutter/material.dart';

Widget purchasesContainer(Widget containerChild) {
  return Container(
    height: 97,
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(16.0),
      ),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 2.0,
        )
      ],
    ),
    child: containerChild,
  );
}
