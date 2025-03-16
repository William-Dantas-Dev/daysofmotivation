import 'package:daysofmotivation/widgets/card_section.dart';
import 'package:daysofmotivation/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final navigator = Navigator.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: theme.textTheme.titleLarge?.copyWith(
            color: theme.colorScheme.onSurface,
          ),
        ),
        elevation: 2,
        backgroundColor: theme.appBarTheme.backgroundColor,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            CardSection(
              sectionTitle: "Account & Privacy",
              children: [
                CustomListTile(
                  title: "Account",
                  icon: Icons.account_circle,
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: theme.iconTheme.color,
                  ),
                  onTap: () => navigator.pushNamed('/account'),
                ),
                CustomListTile(
                  title: "Privacy",
                  icon: Icons.lock,
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: theme.iconTheme.color,
                  ),
                  onTap: () => navigator.pushNamed('/privacy'),
                ),
              ],
            ),
            CardSection(
              sectionTitle: "Appearance",
              children: [
                CustomListTile(
                  title: "Theme",
                  icon: Icons.dark_mode,
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: theme.iconTheme.color,
                  ),
                  onTap: () => navigator.pushNamed('/theme'),
                ),
                CustomListTile(
                  title: "Language",
                  icon: Icons.language,
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: theme.iconTheme.color,
                  ),
                  onTap: () => navigator.pushNamed('/language'),
                ),
              ],
            ),
            CardSection(
              sectionTitle: "Notifications & Sound",
              children: [
                CustomListTile(
                  title: "Volume",
                  icon: Icons.volume_up,
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: theme.iconTheme.color,
                  ),
                  onTap: () => navigator.pushNamed('/volume'),
                ),
                CustomListTile(
                  title: "Notifications",
                  icon: Icons.notifications,
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: theme.iconTheme.color,
                  ),
                  onTap: () => navigator.pushNamed('/notifications'),
                ),
              ],
            ),
            CardSection(
              sectionTitle: "Support & Info",
              children: [
                CustomListTile(
                  title: "Help & Feedback",
                  icon: Icons.help,
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: theme.iconTheme.color,
                  ),
                  onTap: () => navigator.pushNamed('/help'),
                ),
                CustomListTile(
                  title: "About",
                  icon: Icons.info,
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: theme.iconTheme.color,
                  ),
                  onTap: () => navigator.pushNamed('/about'),
                ),
                CustomListTile(
                  title: "Backup & Restore",
                  icon: Icons.cloud_upload,
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: theme.iconTheme.color,
                  ),
                  onTap: () => navigator.pushNamed('/backup'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
