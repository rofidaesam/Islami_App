import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppConvigProvider extends ChangeNotifier
{
String applanguage ='en';
ThemeMode appTheme =ThemeMode.dark;
void changeLanguage(String newlanguage)
{
  if(applanguage == newlanguage)
    {
      return;
    }
  applanguage = newlanguage;
  notifyListeners();
}
void changeTheme(ThemeMode newTheme)
{
  if(appTheme == newTheme)
    {
      return;
    }
  appTheme = newTheme;
  notifyListeners();
}
bool isDark()
{
  return appTheme == ThemeMode.dark;
}
}