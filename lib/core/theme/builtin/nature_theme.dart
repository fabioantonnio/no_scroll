import 'package:flutter/material.dart';
import '../models/app_theme.dart';

/// Tema Nature - Tema alternativo do No Scroll
///
/// Inspirado em:
/// - Material Design + Organic Design
/// - Cores quentes (verde, marrom, bege, azul céu)
/// - Estética orgânica, acolhedora e suave
/// - Tipografia serif/organic
class NatureTheme {
  static AppTheme get theme => AppTheme(
        id: 'nature',
        name: 'Nature',
        description: 'Tema orgânico com cores quentes e estilo acolhedor. '
            'Inspirado na natureza e em elementos naturais.',
        author: 'No Scroll Team',
        version: '1.0.0',
        isBuiltIn: true,

        // ============ CORES ============
        primaryColor: const Color(0xFF2E7D32), // Verde escuro
        secondaryColor: const Color(0xFF795548), // Marrom
        backgroundColor: const Color(0xFFF5F0E8), // Bege claro
        surfaceColor: const Color(0xFFFFFFFF), // Branco
        errorColor: const Color(0xFFD32F2F), // Vermelho
        textColor: const Color(0xFF1A1A1A), // Preto suave
        textSecondaryColor: const Color(0xFF6D6D6D), // Cinza escuro
        dividerColor: const Color(0xFFE0D5C1), // Bege escuro
        shadowColor: const Color(0xFF8D6E63), // Marrom para sombras
        highlightColor: const Color(0xFF2E7D32).withOpacity(0.15),
        splashColor: const Color(0xFF2E7D32).withOpacity(0.25),

        // ============ TIPOGRAFIA ============
        fontFamily: 'Roboto',
        headlineStyle: const TextStyle(
          fontFamily: 'Roboto',
          fontSize: 28,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.3,
          height: 1.2,
        ),
        bodyStyle: const TextStyle(
          fontFamily: 'Roboto',
          fontSize: 16,
          fontWeight: FontWeight.normal,
          letterSpacing: 0.2,
          height: 1.5,
        ),
        captionStyle: const TextStyle(
          fontFamily: 'Roboto',
          fontSize: 13,
          fontWeight: FontWeight.normal,
          letterSpacing: 0.3,
          height: 1.4,
        ),
        buttonStyle: const TextStyle(
          fontFamily: 'Roboto',
          fontSize: 16,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.5,
          height: 1.2,
        ),

        // ============ FORMAS ============
        borderRadius: BorderRadius.circular(12),
        elevation: 4.0,
        shadowOpacity: 0.3,
        padding: const EdgeInsets.all(16.0),
        spacing: 16.0,

        // ============ ÍCONES ============
        icons: const {
          IconType.home: Icons.home_rounded,
          IconType.search: Icons.search_rounded,
          IconType.settings: Icons.settings_rounded,
          IconType.favorite: Icons.favorite_rounded,
          IconType.profile: Icons.person_rounded,
          IconType.theme: Icons.palette_rounded,
          IconType.sound: Icons.volume_up_rounded,
          IconType.download: Icons.download_rounded,
          IconType.share: Icons.share_rounded,
          IconType.plus: Icons.add_rounded,
          IconType.minus: Icons.remove_rounded,
          IconType.close: Icons.close_rounded,
          IconType.menu: Icons.menu_rounded,
          IconType.back: Icons.arrow_back_rounded,
          IconType.forward: Icons.arrow_forward_rounded,
          IconType.refresh: Icons.refresh_rounded,
          IconType.delete: Icons.delete_rounded,
          IconType.edit: Icons.edit_rounded,
          IconType.check: Icons.check_rounded,
          IconType.warning: Icons.warning_rounded,
          IconType.info: Icons.info_rounded,
          IconType.help: Icons.help_rounded,
        },
        iconAssets: const {},

        // ============ PROPRIEDADES EXTRAS ============
        customProperties: const {
          'enableGlassmorphism': false,
          'enableNeumorphism': true,
          'animationCurve': 'easeInOutQuad',
          'transitionDuration': 300,
          'glassyOpacity': 0.0,
          'useCyberpunkGlow': false,
        },
      );
}
