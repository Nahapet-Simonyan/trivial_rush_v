import 'package:flutter/material.dart';

/// Created by Nahapet
/// Date: 14.10.22

/// Create provider for control the on boarding pages
/// [pageIndex] current `on boarding` page index
/// [page] `on boarding` page -> PageView -> PageController -> initialPage

class PageControllerProvider with ChangeNotifier {
  int pageIndex = 0;
  PageController page = PageController(initialPage: 0);

  void changePage(index) {
    page = PageController(initialPage: index);
    pageIndex = index;

    notifyListeners();
  }
}
