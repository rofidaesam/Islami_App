import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppConvigProvider extends ChangeNotifier
{
String applanguage ='en';
ThemeMode appTheme =ThemeMode.dark;
void changeLanguage(String newlanguage)async
{
  if(applanguage == newlanguage)
    {
      return;
    }
  applanguage = newlanguage;
  notifyListeners();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('language', applanguage);
}
void changeTheme(ThemeMode newTheme)async
{
  if(appTheme == newTheme)
    {
      return;
    }
  appTheme = newTheme;
  final SharedPreferences prefs = await SharedPreferences.getInstance();
prefs.setBool('mode', appTheme as bool);
  notifyListeners();
}
bool isDark()
{
  return appTheme == ThemeMode.dark;
}
}