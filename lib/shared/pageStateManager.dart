import 'package:shared_preferences/shared_preferences.dart';

class PageStateManager {
  static late final SharedPreferences  _shared;
  static const String _currentRouteKey = "currentRouteKey";
  static const String initialRoute = "/";
  static String _currentPage = initialRoute;
  
  static Future<void> init() async {
    _shared = await SharedPreferences.getInstance();
    currentPage = _shared.getString(_currentRouteKey) ?? initialRoute;
  }

  static String get currentPage => _currentPage;

  static set currentPage(String route) {
    _shared.setString(_currentRouteKey, route);
    _currentPage = route;
  }

}
