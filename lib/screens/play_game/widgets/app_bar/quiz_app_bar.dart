import 'package:flutter/material.dart';
import 'package:trivial_rush/constants/colors_list/colors_list.dart';
import 'package:trivial_rush/screens/home_page/home_page_screen.dart';
import 'package:trivial_rush/screens/play_game/widgets/app_bar/quiz_app_bar_circular_tween.dart';

Widget quizAppBar(context, snapshot, index) {
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
        circularAppBar(snapshot, index),
      ],
    ),
  );
}
