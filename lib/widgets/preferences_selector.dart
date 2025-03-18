import 'package:daysofmotivation/provider/preferences_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PreferencesSelector extends ConsumerWidget {
  const PreferencesSelector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.watch(preferencesProvider);
    final groupedCategories = {
      for (var category in categories)
        category.parentCategory:
            categories
                .where((c) => c.parentCategory == category.parentCategory)
                .toList(),
    };

    final theme = Theme.of(context); // Access current theme

    return ListView(
      padding: const EdgeInsets.all(16.0),
      children:
          groupedCategories.entries.map((entry) {
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Theme(
                data: theme.copyWith(
                  dividerColor: Colors.transparent, // Remove divider line
                ),
                child: ExpansionTile(
                  tilePadding: const EdgeInsets.symmetric(horizontal: 12.0),
                  title: Text(
                    entry.key,
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: theme.colorScheme.onSurface, // Title color
                    ),
                  ),
                  children:
                      entry.value.map((category) {
                        return ListTile(
                          onTap: () {
                            ref
                                .read(preferencesProvider.notifier)
                                .toggleCategory(category);
                          },
                          title: Text(
                            category.name,
                            style: TextStyle(
                              color: theme.colorScheme.onSurface,
                            ), // Item color
                          ),
                          trailing: Checkbox(
                            value: category.isSelected,
                            onChanged: (bool? value) {
                              ref
                                  .read(preferencesProvider.notifier)
                                  .toggleCategory(category);
                            },
                          ),
                        );
                      }).toList(),
                ),
              ),
            );
          }).toList(),
    );
  }
}
