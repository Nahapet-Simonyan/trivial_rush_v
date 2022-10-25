import 'package:flutter/material.dart';

class ScoreController with ChangeNotifier{
  int score = 0;

  void changeScore(int newScore){
    score += newScore;
  }
}