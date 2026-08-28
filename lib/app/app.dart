import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../core/theme/models/app_theme.dart';
import '../core/theme/theme_store.dart';

class NoScrollApp extends ConsumerWidget {
  const NoScrollApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Observa o tema atual
    final currentTheme = ref.watch(currentThemeProvider);
    
    // Gera o ThemeData do Flutter
    final themeData = currentTheme.toThemeData();
    
    return MaterialApp(
      title: 'No Scroll',
      debugShowCheckedModeBanner: false,
      theme: themeData,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('pt'),
        Locale('es'),
        Locale('fr'),
      ],
      
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentTheme = ref.watch(currentThemeProvider);
    final availableThemes = ref.watch(availableThemesProvider);
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('No Scroll'),
        centerTitle: true,
        backgroundColor: currentTheme.primaryColor,
      ),
      body: Padding(
        padding: currentTheme.padding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              currentTheme.icons[IconType.theme] ?? Icons.palette,
              size: 80,
              color: currentTheme.secondaryColor,
            ),
            const SizedBox(height: 16),
            Text(
              'Bem-vindo ao No Scroll!',
              style: currentTheme.headlineStyle,
            ),
            const SizedBox(height: 8),
            Text(
              'Personalização completa para seu app',
              style: currentTheme.bodyStyle,
            ),
            const SizedBox(height: 32),
            
            // Botões para trocar tema
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: availableThemes.map((theme) {
                return ElevatedButton(
                  onPressed: () {
                    ref.read(currentThemeProvider.notifier).setTheme(theme.id);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: theme.primaryColor,
                    foregroundColor: theme.textColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(theme.name),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}