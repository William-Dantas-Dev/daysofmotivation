import 'package:daysofmotivation/pages/home_page.dart';
import 'package:daysofmotivation/pages/language_page.dart';
import 'package:daysofmotivation/pages/profile_page.dart';
import 'package:daysofmotivation/pages/settings_page.dart';
import 'package:daysofmotivation/pages/splash_page.dart';
import 'package:daysofmotivation/pages/theme_page.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splashPage = '/';
  static const String homePage = '/home';
  static const String profilePage = '/profile';
  static const String settingsPage = '/settings';
  static const String themePage = '/theme';
  static const String languagePage = '/language';

  static Map<String, WidgetBuilder> get routes {
    return {
      splashPage: (context) => SplashPage(),
      profilePage: (context) => ProfilePage(),
      settingsPage: (context) => SettingsPage(),
      homePage: (context) => HomePage(),
      themePage: (context) => ThemePage(),
      languagePage: (context) => LanguagePage(),
    };
  }
}
