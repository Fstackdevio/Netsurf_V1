import 'dart:async';
import 'dart:convert';
import 'package:netsurf/models/User.dart';
import 'package:netsurf/tools/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppSharedPref {
  static Future<SharedPreferences> getInstance() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences;
  }

  static Future<void> clear() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.clear();
  }

  static Future<bool> isUserLoggedIn() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getBool(SharedPreferenceKeys.IS_LOGGED_IN);
  }

  static Future<void> setUserLoggedIn(bool isLoggedIn) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.setBool(SharedPreferenceKeys.IS_LOGGED_IN, isLoggedIn);
  }

  static Future<User> getUserProfile() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return User.fromJson(json.decode(preferences.getString(SharedPreferenceKeys.USER)));
  }

  static Future<void> setUserProfile(User user) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String userProfileJson = json.encode(user);
    return preferences.setString(SharedPreferenceKeys.USER, userProfileJson);
  }
}