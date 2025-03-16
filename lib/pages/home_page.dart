import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: theme.colorScheme.inversePrimary,
        foregroundColor: theme.colorScheme.onSurface,
        elevation: 2,
      ),
      body: Center(
        child: Text(
          'Home Page',
          style: TextStyle(fontSize: 20, color: theme.colorScheme.onSurface),
        ),
      ),
    );
  }
}
