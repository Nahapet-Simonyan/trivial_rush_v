import 'package:flutter/material.dart';

class CountdownProvider with ChangeNotifier {
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
  void changeAutoPlay(newBool) {
    autoplay = newBool;
    notifyListeners();
  }
  void defaultIndex() {
    currentIndex = 0;
    autoplay = true;
  }
}