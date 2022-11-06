import 'package:flutter/material.dart';
import 'package:trivial_rush/constants/colors_list/colors_list.dart';
import 'package:trivial_rush/screens/home_page/home_page_screen.dart';

Widget quizAppBar(quizPageController, context, snapshot, index) {
  return Container(
    color: Colors.white10,
    child: Stack(
      children: [
        Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 69,
              color: leaderboardColorList[index % leaderboardColorList.length],
              child: IconButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                      (route) => false);
                },
                icon: const Icon(
                  Icons.chevron_left_outlined,
                  size: 30,
                  color: Colors.white,
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
        circularAppBar(context, quizPageController, snapshot, index, quizPageController),
      ],
    ),
  );
}

Widget circularAppBar(
    BuildContext context, controller, snapshot, index, quizPageController) {
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
            builder: (context, value, _) {
              return Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 89,
                      width: 89,
                      child: CircularProgressIndicator(
                        value: value as double,
                        color: Colors.white,
                        backgroundColor: leaderboardColorList[
                        index % leaderboardColorList.length],
                        strokeWidth: 8,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: TweenAnimationBuilder(
                      tween: Tween(begin: seconds.toDouble(), end: 0.0),
                      duration: Duration(seconds: seconds),
                      builder: (context, valueT, _) {
                        var timer = valueT as double;

                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              timer.toStringAsFixed(0),
                              style: TextStyle(
                                fontSize: 24,
                                fontFamily: 'AmericanTypeWriter',
                                color: leaderboardColorList[
                                index % leaderboardColorList.length],
                              ),
                            ),
                            Text(
                              timer.toString().length<5
                                  ? '.00'
                                  : '.${timer.toString().substring(3, 5)}',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'AmericanTypeWriter',
                                color: leaderboardColorList[
                                index % leaderboardColorList.length],
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              );
            },
            onEnd: () {
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
