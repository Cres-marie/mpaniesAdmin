import 'package:shared_preferences/shared_preferences.dart';

class CurrentScreenManager {
  static const String _keyCurrentScreen = 'current_screen';

  static Future<void> setCurrentScreen(String route) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_keyCurrentScreen, route);
  }

  static Future<String?> getCurrentScreen() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_keyCurrentScreen);
  }
}
