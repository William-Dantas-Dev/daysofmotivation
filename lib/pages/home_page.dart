import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            tooltip: 'Profile Page',
            onPressed: () => Navigator.pushNamed(context, '/profile'),
          ),
        ],
        title: Text(
          'Home Page',
          style: theme.textTheme.titleLarge?.copyWith(
            color: theme.colorScheme.onSurface,
          ),
        ),
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
