import 'package:flutter/material.dart';

import '../../../constants/colors_list/colors_list.dart';

class QuizPageController with ChangeNotifier {

  Color color = Colors.white;
  Color textColor = const Color.fromRGBO(74, 74, 74, 1);


  void changeColor(int index) {
    color = leaderboardColorList[index % leaderboardColorList.length];
    textColor = Colors.white;
    notifyListeners();
  }
  void defaultColor() {
    color = Colors.white;
    textColor = const Color.fromRGBO(74, 74, 74, 1);
  }
  void falseAnswer() {
    textColor = Colors.red;
  }
}