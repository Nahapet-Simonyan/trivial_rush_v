import 'package:flutter/material.dart';
import '../../../../constants/colors_list/colors_list.dart';

Widget circularAppBar(BuildContext context, controller, snapshot, index, quizPageController) {
  int seconds = snapshot.data![index].question_seconds;
  return Align(
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
            duration: Duration(seconds: seconds),
            builder: (context, value, _) =>
                CircularProgressIndicator(
                  value: value as double,
                  color: Colors.white,
                  backgroundColor: leaderboardColorList[index % leaderboardColorList.length],
                  strokeWidth: 8,
                ),
            onEnd:() {
              quizPageController.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.linear);
            },
          ),
        ),
      ),
    ),
  );
}