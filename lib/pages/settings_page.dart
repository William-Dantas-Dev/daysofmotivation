import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings Page'),
        backgroundColor: theme.colorScheme.inversePrimary,
        foregroundColor: theme.colorScheme.onSurface,
        elevation: 2,
      ),
      body: Center(
        child: Text(
          'Settings Page',
          style: TextStyle(fontSize: 20, color: theme.colorScheme.onSurface),
        ),
      ),
    );
  }
}
