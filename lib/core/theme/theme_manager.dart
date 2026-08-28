import 'package:flutter/material.dart';
import 'models/app_theme.dart';
import 'builtin/technology_theme.dart';
import 'builtin/nature_theme.dart';

/// Gerenciador de temas do No Scroll.
class ThemeManager {
  // ============ SINGLETON ============
  static final ThemeManager _instance = ThemeManager._internal();
  factory ThemeManager() => _instance;
  ThemeManager._internal();
  
  // ============ ESTADO ============
  AppTheme _currentTheme = TechnologyTheme.theme;
  final List<AppTheme> _availableThemes = [];
  
  // ============ GETTERS ============
  List<AppTheme> get availableThemes => _availableThemes;
  AppTheme get currentTheme => _currentTheme;
  
  // ============ INICIALIZAÇÃO ============
  void init() {
    _availableThemes.clear();
    _availableThemes.addAll([
      TechnologyTheme.theme,
      NatureTheme.theme,
    ]);
    _currentTheme = TechnologyTheme.theme;
  }
  
  // ============ MÉTODOS ============
  void setTheme(String themeId) {
    try {
      final theme = _availableThemes.firstWhere((t) => t.id == themeId);
      _currentTheme = theme;
    } catch (_) {
      // Se não encontrar, mantém o atual
    }
  }
  
  ThemeData getThemeData() {
    return _currentTheme.toThemeData();
  }
}