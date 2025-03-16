import 'package:daysofmotivation/pages/home_page.dart';
import 'package:daysofmotivation/pages/settings_page.dart';
import 'package:daysofmotivation/pages/splash_page.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splashPage = '/';
  static const String homePage = '/home';
  static const String settingsPage = '/settings';

  static Map<String, WidgetBuilder> get routes {
    return {
      splashPage: (context) => const SplashPage(),
      settingsPage: (context) => SettingsPage(),
      homePage: (context) => HomePage(),
    };
  }
}
