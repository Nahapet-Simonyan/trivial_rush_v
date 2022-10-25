import 'package:flutter/material.dart';

class CountdownController with ChangeNotifier {
  bool autoplay = true;
  int currentIndex = 0;

  void stopPlay() {
    autoplay = false;
    notifyListeners();
  }
  void changeIndex(index) {
    currentIndex = index;
    notifyListeners();
  }
  void defaultIndex() {
    currentIndex = 0;
    autoplay = true;
    notifyListeners();
  }
}