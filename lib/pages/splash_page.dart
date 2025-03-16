import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash Page'),
        backgroundColor: theme.colorScheme.inversePrimary,
        foregroundColor: theme.colorScheme.onSurface,
        elevation: 2,
      ),
      body: Center(
        child: Text(
          'Splash Page',
          style: TextStyle(fontSize: 20, color: theme.colorScheme.onSurface),
        ),
      ),
    );
  }
}
