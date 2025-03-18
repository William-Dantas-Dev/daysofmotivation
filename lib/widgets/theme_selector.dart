import 'package:daysofmotivation/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeSelector extends ConsumerWidget {
  const ThemeSelector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);
    final localization = AppLocalizations.of(context)!;
    return ListView(
      children: [
        ListTile(
          title: Text(localization.light_theme),
          trailing: Radio<ThemeMode>(
            value: ThemeMode.light,
            groupValue: themeMode,
            onChanged: (ThemeMode? value) {
              if (value != null) {
                ref.read(themeProvider.notifier).setTheme(value);
              }
            },
          ),
        ),
        ListTile(
          title: Text(localization.dark_theme),
          trailing: Radio<ThemeMode>(
            value: ThemeMode.dark,
            groupValue: themeMode,
            onChanged: (ThemeMode? value) {
              if (value != null) {
                ref.read(themeProvider.notifier).setTheme(value);
              }
            },
          ),
        ),
        ListTile(
          title: Text(localization.theme_system),
          trailing: Radio<ThemeMode>(
            value: ThemeMode.system,
            groupValue: themeMode,
            onChanged: (ThemeMode? value) {
              if (value != null) {
                ref.read(themeProvider.notifier).setTheme(value);
              }
            },
          ),
        ),
      ],
    );
  }
}
