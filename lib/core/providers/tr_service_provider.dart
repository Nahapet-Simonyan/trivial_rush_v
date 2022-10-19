import 'package:flutter/material.dart';

class TRServiceProvider with ChangeNotifier {
  String? page;

  TRServiceProvider({
    this.page = 'products',
  });

  void changeLanguage(String newPage) {
    page = newPage;
    notifyListeners();
  }


}

