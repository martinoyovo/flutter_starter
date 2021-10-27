import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_starter/utils/strings.dart';

class LocalStorage {
  static final String _isFirstLaunch = "AppFirstLaunch";
  static final String _authToken = "TOKEN";
  static final String _refreshToken = "REFRESH_TOKEN";
  static final String _authResponse = "AUTH_RESPONSE";

  static Future<SharedPreferences> getSharedPreferences() async {
    return await SharedPreferences.getInstance();
  }

  static storeInt(String key, int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt(key, value);
    prefs.reload();
  }

  static Future<String> getAuthResponse() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? value = prefs.getString(_authResponse);
    return value!;
  }

  static storeAuthResponse(String? value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(_authResponse, value!);
    prefs.reload();
  }

  static storeDouble(String key, double value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setDouble(key, value);
    prefs.reload();
  }

  static Future<double> getDouble(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    double? value = prefs.getDouble(key);
    return value!;
  }


  static setString(String key, String? value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value!);
    prefs.reload();
  }

  static Future<String> getString(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? stringValue = prefs.getString(key);
    return stringValue!;
  }

  static setInt(String key, int? value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt(key, value!);
    prefs.reload();
  }

  static Future<int> getInt(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int? intValue = prefs.getInt(key);
    return intValue!;
  }

  static Future<bool> isAuthenticated() async {
    final prefs = await getSharedPreferences();
    return prefs.getString(_authToken) != null;
  }

  static Future<void> setIsFirstLaunch(bool value) async {
    final prefs = await getSharedPreferences();

    prefs.setBool(_isFirstLaunch, value);
    await prefs.reload();
  }

  static Future<bool> getIsFirstLaunch() async {
    final prefs = await getSharedPreferences();
    return prefs.getBool(_isFirstLaunch) ?? true;
  }

  static Future<void> clearToken() async {
    final prefs = await getSharedPreferences();

    prefs.remove(_authToken);
  }

  static Future<String?> getToken() async {
    final prefs = await getSharedPreferences();
    return prefs.getString(_authToken);
  }

  static Future<void> cleanPrefDB() async {
    final prefs = await getSharedPreferences();
    prefs.clear();
    prefs.reload();
  }
}