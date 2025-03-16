import 'package:daysofmotivation/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final navigator = Navigator.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile Page',
          style: theme.textTheme.titleLarge?.copyWith(
            color: theme.colorScheme.onSurface,
          ),
        ),
        elevation: 2,
        backgroundColor: theme.appBarTheme.backgroundColor,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            CustomListTile(
              title: "Settings",
              icon: Icons.settings,
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 15,
                color: theme.iconTheme.color,
              ),
              onTap: () => navigator.pushNamed('/settings'),
            ),
          ],
        ),
      ),
    );
  }
}
