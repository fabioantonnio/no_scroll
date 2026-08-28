import 'package:flutter/material.dart';
import '../models/app_theme.dart';

/// Tema Technology - Tema padrão do No Scroll
/// 
/// Inspirado em:
/// - Neumorphism + Glassmorphism
/// - Cores frias (azul escuro, ciano, cinza tecnologia)
/// - Estética futurista e minimalista
/// - Tipografia monospace/geométrica
class TechnologyTheme {
  static AppTheme get theme => AppTheme(
        id: 'technology',
        name: 'Technology',
        description: 'Tema futurista com cores frias e estilo minimalista. '
            'Inspirado em interfaces tecnológicas avançadas.',
        author: 'No Scroll Team',
        version: '1.0.0',
        isBuiltIn: true,
        
        // ============ CORES ============
        primaryColor: const Color(0xFF0D47A1), // Azul escuro
        secondaryColor: const Color(0xFF00BCD4), // Ciano vibrante
        backgroundColor: const Color(0xFF0A0A0F), // Preto com toque azulado
        surfaceColor: const Color(0xFF1A1A2E), // Roxo escuro
        errorColor: const Color(0xFFFF1744), // Vermelho vibrante
        textColor: const Color(0xFFE0E0E0), // Cinza claro
        textSecondaryColor: const Color(0xFF9E9E9E), // Cinza médio
        dividerColor: const Color(0xFF2A2A3E), // Cinza escuro
        shadowColor: const Color(0xFF00BCD4), // Ciano para sombras
        highlightColor: const Color(0xFF00BCD4).withValues(alpha: 0.2),
        splashColor: const Color(0xFF00BCD4).withValues(alpha: 0.3),
        
        // ============ TIPOGRAFIA ============
        fontFamily: 'Roboto',
        headlineStyle: const TextStyle(
          fontFamily: 'Roboto',
          fontSize: 28,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.5,
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
          'enableGlassmorphism': true,
          'enableNeumorphism': false,
          'animationCurve': 'easeOutCubic',
          'transitionDuration': 300,
          'glassyOpacity': 0.15,
          'useCyberpunkGlow': true,
        },
      );
}