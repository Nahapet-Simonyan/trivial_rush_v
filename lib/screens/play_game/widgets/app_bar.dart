import 'package:flutter/material.dart';

Widget quizAppBar(context) {
  return Container(
      color: Colors.white10,
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 69,
                color: Colors.orange,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.chevron_left_outlined,
                    size: 30,
                  ),
                  alignment: Alignment.centerLeft,
                ),
              ),
              Container(
                height: 44,
                color: Colors.white,
              ),
            ],
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Container(
                height: 89,
                width: 89,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(83.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TweenAnimationBuilder(
                    tween: Tween(begin: 0.0, end: 1.0),
                    duration: const Duration(seconds: 5),
                    builder: (context, value, _) =>
                        CircularProgressIndicator(
                          value: value as double,
                          color: Colors.white,
                          backgroundColor: Colors.orange,
                          strokeWidth: 8,
                        ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
}