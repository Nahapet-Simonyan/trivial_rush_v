import 'package:flutter/material.dart';

/// Created by Nahapet
/// Date: 14.10.22

/// Create a Check Box Provider.
/// [changeCheck] is changes Provider value
/// [isChecked] is changes check state `true` -> `false`; `false` -> `true`

class LoginPageCheckBoxProvider with ChangeNotifier {
  bool isChecked;

  LoginPageCheckBoxProvider({this.isChecked = false});

  void changeCheck() {
    isChecked = !isChecked;
    notifyListeners();
  }
}
