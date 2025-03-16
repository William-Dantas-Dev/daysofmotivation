import 'package:daysofmotivation/provider/theme_provider.dart';
import 'package:daysofmotivation/routes.dart';
import 'package:daysofmotivation/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);
    return MaterialApp(
      title: '365 - Dias de Motivação',
      routes: Routes.routes,
      initialRoute: '/',
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      themeMode: themeMode,
      debugShowCheckedModeBanner: false,
    );
  }
}
