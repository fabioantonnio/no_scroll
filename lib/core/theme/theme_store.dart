import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'models/app_theme.dart';
import 'theme_manager.dart';

// Provider para o ThemeManager
final themeManagerProvider = Provider<ThemeManager>((ref) {
  final manager = ThemeManager();
  manager.init(); // Inicializa automaticamente
  return manager;
});

// Provider para o tema atual (Notifier)
final currentThemeProvider = StateNotifierProvider<ThemeNotifier, AppTheme>((ref) {
  final manager = ref.watch(themeManagerProvider);
  return ThemeNotifier(manager);
});

// Provider para a lista de temas disponíveis
final availableThemesProvider = Provider<List<AppTheme>>((ref) {
  final manager = ref.watch(themeManagerProvider);
  return manager.availableThemes;
});

// Notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  final ThemeManager _manager;
  
  ThemeNotifier(this._manager) : super(_manager.currentTheme);
  
  void setTheme(String themeId) {
    _manager.setTheme(themeId);
    state = _manager.currentTheme;
  }
  
  ThemeData getThemeData() {
    return _manager.getThemeData();
  }
}