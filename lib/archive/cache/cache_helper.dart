// Save - Get - Delete - Clear
// SharedPreferance store data key: value
import 'package:shared_preferences/shared_preferences.dart';

class CacheData {
  // Declaration
  late SharedPreferences sharedPreferences;

  // Assignment
  void cacheInitialization() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  // Methods:
  // 1. Set data:
  Future<bool> setData({required String key, required dynamic value}) async {
    if (value is bool) {
      await sharedPreferences.setBool(key, value);
      return true;
    }
    if (value is int) {
      await sharedPreferences.setInt(key, value);
      return true;
    }
    if (value is double) {
      await sharedPreferences.setDouble(key, value);
      return true;
    }
    if (value is String) {
      await sharedPreferences.setString(key, value);
      return true;
    }
    return false;
  }
}
