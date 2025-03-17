import 'package:daysofmotivation/widgets/card_section.dart';
import 'package:daysofmotivation/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final navigator = Navigator.of(context);
    final localization = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          localization.settings,
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
              sectionTitle: localization.account_privacy,
              children: [
                CustomListTile(
                  title: localization.account,
                  icon: Icons.account_circle,
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: theme.iconTheme.color,
                  ),
                  onTap: () => navigator.pushNamed('/account'),
                ),
                CustomListTile(
                  title: localization.privacy,
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
              sectionTitle: localization.appearance,
              children: [
                CustomListTile(
                  title: localization.theme,
                  icon: Icons.dark_mode,
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: theme.iconTheme.color,
                  ),
                  onTap: () => navigator.pushNamed('/theme'),
                ),
                CustomListTile(
                  title: localization.appearance_language,
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
              sectionTitle: localization.notifications_sound,
              children: [
                CustomListTile(
                  title: localization.volume,
                  icon: Icons.volume_up,
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: theme.iconTheme.color,
                  ),
                  onTap: () => navigator.pushNamed('/volume'),
                ),
                CustomListTile(
                  title: localization.notifications,
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
              sectionTitle: localization.support_info,
              children: [
                CustomListTile(
                  title: localization.help_feedback,
                  icon: Icons.help,
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: theme.iconTheme.color,
                  ),
                  onTap: () => navigator.pushNamed('/help'),
                ),
                CustomListTile(
                  title: localization.about,
                  icon: Icons.info,
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: theme.iconTheme.color,
                  ),
                  onTap: () => navigator.pushNamed('/about'),
                ),
                CustomListTile(
                  title: localization.backup_restore,
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
