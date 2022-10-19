import 'package:flutter/material.dart';

class LoginPageCheckBoxProvider with ChangeNotifier {
  bool isChecked = false;


  void changeCheck(bool ch) {
    isChecked = ch;
    notifyListeners();
  }
}