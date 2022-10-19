import 'package:flutter/material.dart';

class PageControllerProvider with ChangeNotifier {
  PageController page = PageController(initialPage: 0);

  void changePage(index){
    page = PageController(initialPage: index);
    NotificationListener;
  }
}