import 'package:daysofmotivation/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemePage extends ConsumerWidget {
  const ThemePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Theme'), elevation: 2),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Light Theme'),
            trailing: Radio<ThemeMode>(
              value: ThemeMode.light,
              groupValue: themeMode,
              onChanged: (ThemeMode? value) {
                if (value != null) {
                  ref.read(themeProvider.notifier).state = value;
                }
              },
            ),
          ),
          ListTile(
            title: const Text('Dark Theme'),
            trailing: Radio<ThemeMode>(
              value: ThemeMode.dark,
              groupValue: themeMode,
              onChanged: (ThemeMode? value) {
                if (value != null) {
                  ref.read(themeProvider.notifier).state = value;
                }
              },
            ),
          ),
          ListTile(
            title: const Text('System Default'),
            trailing: Radio<ThemeMode>(
              value: ThemeMode.system,
              groupValue: themeMode,
              onChanged: (ThemeMode? value) {
                if (value != null) {
                  ref.read(themeProvider.notifier).state = value;
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
