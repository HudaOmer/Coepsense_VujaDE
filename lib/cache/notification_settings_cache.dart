import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static Future<void> saveSwitchState(String key, bool value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(key, value);
  }

  static Future<bool> getSwitchState(String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key) ?? false;
  }
}
