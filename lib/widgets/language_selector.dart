import 'package:daysofmotivation/provider/language_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageSelector extends ConsumerStatefulWidget {
  const LanguageSelector({super.key});

  @override
  ConsumerState<LanguageSelector> createState() =>
      _LanguageSelectorState();
}

class _LanguageSelectorState extends ConsumerState<LanguageSelector> {
  late String currentLocaleCode = "System";
  void getLanguageCode() async {
    final prefs = await SharedPreferences.getInstance();
    final languageCode = prefs.getString('languageCode');
    if (languageCode != null) {
      setState(() {
        currentLocaleCode = languageCode;
      });
    }
  }

  @override
  initState() {
    super.initState();
    getLanguageCode();
  }

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;
    return ListView(
      children: [
        ListTile(
          title: Text(localization.language_portuguese),
          trailing: Radio<String>(
            value: "pt",
            groupValue: currentLocaleCode,
            onChanged: (String? value) {
              if (value != null) {
                ref.read(languageProvider.notifier).setLanguage(value);
                setState(() {
                  currentLocaleCode = value;
                });
              }
            },
          ),
        ),
        ListTile(
          title: Text(localization.language_english),
          trailing: Radio<String>(
            value: "en",
            groupValue: currentLocaleCode,
            onChanged: (String? value) {
              if (value != null) {
                ref.read(languageProvider.notifier).setLanguage(value);
                setState(() {
                  currentLocaleCode = value;
                });
              }
            },
          ),
        ),
        ListTile(
          title: Text(localization.language_system),
          trailing: Radio<String>(
            value: "System",
            groupValue: currentLocaleCode,
            onChanged: (String? value) {
              if (value != null) {
                ref.read(languageProvider.notifier).setLanguage(value);
                setState(() {
                  currentLocaleCode = value;
                });
              }
            },
          ),
        ),
      ],
    );
  }
}
