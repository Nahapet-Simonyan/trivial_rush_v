import 'package:flutter/material.dart';

class LoginPageCheckBoxProvider with ChangeNotifier {
  bool isChecked;

  LoginPageCheckBoxProvider({this.isChecked = false});

  void changeCheck() {
    isChecked = !isChecked;
    notifyListeners();
  }
}