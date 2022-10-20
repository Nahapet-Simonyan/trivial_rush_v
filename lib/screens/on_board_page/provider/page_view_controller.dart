import 'package:flutter/material.dart';

class PageControllerProvider with ChangeNotifier {
  int pageIndex = 0;
  PageController page = PageController(initialPage: 0);

  void changePage(index) {
    page = PageController(initialPage: index);
    pageIndex = index;

    notifyListeners();
  }
}
