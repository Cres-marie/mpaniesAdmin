import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PageStateManager with ChangeNotifier {
  String currentPage = '/'; // Initialize with the initial route

  // Create a SharedPreferences instance
  SharedPreferences? _prefs;

  Future<void> initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
    // Read the saved current page route from SharedPreferences
    currentPage = _prefs?.getString('currentPage') ?? '/';
    notifyListeners();
  }


  void setCurrentPage(String pageRoute) {
    currentPage = pageRoute;

    // Save the current page route to SharedPreferences
    _prefs?.setString('currentPage', currentPage);
    notifyListeners();
  }
}
