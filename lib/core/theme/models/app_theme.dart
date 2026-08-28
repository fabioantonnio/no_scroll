import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

/// Modelo que representa um tema completo do No Scroll.
/// 
/// Um tema define a aparência visual do app, incluindo:
/// - Cores (primária, secundária, fundo, etc.)
/// - Tipografia (fontes, tamanhos, pesos)
/// - Formas (bordas, elevações, sombras)
/// - Ícones
/// - Propriedades extras (customizações avançadas)
class AppTheme extends Equatable {
  // ============ METADADOS ============
  
  /// Identificador único do tema
  final String id;
  
  /// Nome amigável para exibição
  final String name;
  
  /// Descrição do tema
  final String description;
  
  /// Autor do tema
  final String author;
  
  /// Versão do tema (semantic versioning)
  final String version;
  
  /// URL da imagem de prévia (para a loja de temas)
  final String? previewImageUrl;
  
  /// Indica se é um tema built-in (não pode ser desinstalado)
  final bool isBuiltIn;
  
  // ============ PALETA DE CORES ============
  
  final Color primaryColor;
  final Color secondaryColor;
  final Color backgroundColor;
  final Color surfaceColor;
  final Color errorColor;
  final Color textColor;
  final Color textSecondaryColor;
  final Color dividerColor;
  final Color shadowColor;
  final Color highlightColor;
  final Color splashColor;
  
  // ============ TIPOGRAFIA ============
  
  final String? fontFamily;
  final TextStyle headlineStyle;
  final TextStyle bodyStyle;
  final TextStyle captionStyle;
  final TextStyle buttonStyle;
  
  // ============ FORMAS E ESPAÇAMENTO ============
  
  final BorderRadius borderRadius;
  final double elevation;
  final double shadowOpacity;
  final EdgeInsets padding;
  final double spacing;
  
  // ============ ÍCONES ============
  
  /// Mapeamento de tipo de ícone para IconData
  final Map<IconType, IconData> icons;
  
  /// Mapeamento de tipo de ícone para asset path
  final Map<IconType, String> iconAssets;
  
  // ============ PROPRIEDADES EXTRAS ============
  
  final Map<String, dynamic> customProperties;

  const AppTheme({
    required this.id,
    required this.name,
    required this.description,
    required this.author,
    required this.version,
    this.previewImageUrl,
    this.isBuiltIn = true,
    required this.primaryColor,
    required this.secondaryColor,
    required this.backgroundColor,
    required this.surfaceColor,
    required this.errorColor,
    required this.textColor,
    required this.textSecondaryColor,
    required this.dividerColor,
    required this.shadowColor,
    required this.highlightColor,
    required this.splashColor,
    this.fontFamily,
    required this.headlineStyle,
    required this.bodyStyle,
    required this.captionStyle,
    required this.buttonStyle,
    required this.borderRadius,
    required this.elevation,
    required this.shadowOpacity,
    required this.padding,
    required this.spacing,
    this.icons = const {},
    this.iconAssets = const {},
    this.customProperties = const {},
  });

  /// Cria um ThemeData do Flutter a partir do AppTheme
  ThemeData toThemeData({Brightness brightness = Brightness.dark}) {
    final colorScheme = ColorScheme(
      brightness: brightness,
      primary: primaryColor,
      secondary: secondaryColor,
      surface: surfaceColor,
      error: errorColor,
      onPrimary: textColor,
      onSecondary: textColor,
      onSurface: textColor,
      onError: Colors.white,
    );

    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: colorScheme,
      fontFamily: fontFamily,
      
      // Card Theme
      cardTheme: CardThemeData(
        color: surfaceColor,
        elevation: elevation,
        shadowColor: shadowColor.withValues(alpha: shadowOpacity),
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius,
        ),
      ),
      
      // AppBar Theme
      appBarTheme: AppBarTheme(
        backgroundColor: primaryColor,
        foregroundColor: textColor,
        elevation: elevation,
        titleTextStyle: headlineStyle.copyWith(
          color: textColor,
          fontSize: 20,
        ),
      ),
      
      // Text Themes
      textTheme: TextTheme(
        displayLarge: headlineStyle,
        displayMedium: headlineStyle,
        displaySmall: headlineStyle,
        headlineLarge: headlineStyle,
        headlineMedium: headlineStyle,
        headlineSmall: headlineStyle,
        bodyLarge: bodyStyle,
        bodyMedium: bodyStyle,
        bodySmall: captionStyle,
        titleLarge: buttonStyle,
        titleMedium: buttonStyle,
        titleSmall: buttonStyle,
      ),
      
      // Icon Theme
      iconTheme: IconThemeData(
        color: textColor,
        size: 24,
      ),
      
      // Divider Theme
      dividerTheme: DividerThemeData(
        color: dividerColor,
        space: spacing,
      ),
      
      // Elevated Button Theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: textColor,
          padding: EdgeInsets.symmetric(
            horizontal: padding.horizontal * 1.5,
            vertical: padding.vertical,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius,
          ),
          elevation: elevation,
        ),
      ),
      
      // Input Decoration Theme
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: surfaceColor,
        border: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide(
            color: dividerColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide(
            color: dividerColor.withValues(alpha: 0.3),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide(
            color: primaryColor,
            width: 2,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide(
            color: errorColor,
            width: 2,
          ),
        ),
        contentPadding: padding,
      ),
    );
  }

  @override
  List<Object?> get props => [
        id,
        name,
        description,
        author,
        version,
        previewImageUrl,
        isBuiltIn,
        primaryColor,
        secondaryColor,
        backgroundColor,
        surfaceColor,
        errorColor,
        textColor,
        textSecondaryColor,
        dividerColor,
        shadowColor,
        highlightColor,
        splashColor,
        fontFamily,
        headlineStyle,
        bodyStyle,
        captionStyle,
        buttonStyle,
        borderRadius,
        elevation,
        shadowOpacity,
        padding,
        spacing,
        icons,
        iconAssets,
        customProperties,
      ];
}

/// Tipos de ícones suportados pelo sistema
enum IconType {
  home,
  search,
  settings,
  favorite,
  profile,
  theme,
  sound,
  download,
  share,
  plus,
  minus,
  close,
  menu,
  back,
  forward,
  refresh,
  delete,
  edit,
  check,
  warning,
  info,
  help,
}