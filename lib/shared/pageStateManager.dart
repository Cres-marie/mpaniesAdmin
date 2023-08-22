import 'package:flutter/material.dart';

class PageStateManager with ChangeNotifier {
  String currentPage = '/'; // Initialize with the initial route

  void setCurrentPage(String pageRoute) {
    currentPage = pageRoute;
    notifyListeners();
  }
}
