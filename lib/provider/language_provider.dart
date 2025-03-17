import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final languageProvider = StateNotifierProvider<LanguageNotifier, Locale>((ref) {
  return LanguageNotifier();
});

class LanguageNotifier extends StateNotifier<Locale> {
  LanguageNotifier() : super(Locale('en')) {
    _loadLanguage();
  }

  // Carrega o idioma salvo
  Future<void> _loadLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    final languageCode = prefs.getString('languageCode');
    if (languageCode != null) {
      state = Locale(languageCode);
    } else {
      state = Locale.fromSubtags(languageCode: _getSystemLanguageCode());
    }
  }

  String _getSystemLanguageCode() {
    return PlatformDispatcher.instance.locales.first.languageCode;
  }

  Future<void> setLanguage(String languageCode) async {
    if (languageCode == 'System') {
      state = Locale.fromSubtags(
        languageCode: PlatformDispatcher.instance.locales.first.languageCode,
      );
    } else {
      state = Locale(languageCode);
    }
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('languageCode', languageCode);
  }
}
