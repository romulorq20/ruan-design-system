import 'package:flutter/material.dart';
import '../tokens/tokens.dart';

class RuanTheme {
  RuanTheme._();

  static ThemeData get light => ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.light(
          primary: PrimaryTokens.primary500,
          onPrimary: PrimaryTokens.neutral0,
          primaryContainer: PrimaryTokens.primary100,
          onPrimaryContainer: PrimaryTokens.primary800,
          secondary: SecondaryTokens.secondary500,
          onSecondary: PrimaryTokens.neutral0,
          surface: PrimaryTokens.neutral0,
          onSurface: PrimaryTokens.neutral800,
          surfaceContainerHighest: PrimaryTokens.neutral100,
          error: SecondaryTokens.error,
          onError: PrimaryTokens.neutral0,
          outline: PrimaryTokens.neutral300,
        ),
        fontFamily: PrimaryTokens.fontFamily,
        textTheme: _textTheme,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: PrimaryTokens.primary500,
            foregroundColor: PrimaryTokens.neutral0,
            padding: const EdgeInsets.symmetric(
              horizontal: PrimaryTokens.spacingMd,
              vertical: PrimaryTokens.spacingSm,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(SecondaryTokens.radiusMd),
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: PrimaryTokens.neutral50,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(SecondaryTokens.radiusSm),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(SecondaryTokens.radiusSm),
            borderSide: const BorderSide(color: PrimaryTokens.neutral200),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(SecondaryTokens.radiusSm),
            borderSide: const BorderSide(
              color: PrimaryTokens.primary500,
              width: SecondaryTokens.borderWidthMedium,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(SecondaryTokens.radiusSm),
            borderSide: const BorderSide(color: SecondaryTokens.error),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: PrimaryTokens.spacingMd,
            vertical: PrimaryTokens.spacingSm,
          ),
        ),
        cardTheme: CardThemeData(
          color: PrimaryTokens.neutral0,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(SecondaryTokens.radiusMd),
            side: const BorderSide(color: PrimaryTokens.neutral200),
          ),
          margin: const EdgeInsets.symmetric(vertical: PrimaryTokens.spacingXs),
          clipBehavior: Clip.antiAlias,
        ),
      );

  static TextTheme get _textTheme => TextTheme(
        displayLarge: TextStyle(
          fontSize: PrimaryTokens.fontSize2xl,
          fontWeight: FontWeight.bold,
          color: PrimaryTokens.neutral900,
        ),
        displayMedium: TextStyle(
          fontSize: PrimaryTokens.fontSizeXl,
          fontWeight: FontWeight.bold,
          color: PrimaryTokens.neutral900,
        ),
        headlineMedium: TextStyle(
          fontSize: PrimaryTokens.fontSizeLg,
          fontWeight: FontWeight.w600,
          color: PrimaryTokens.neutral800,
        ),
        titleLarge: TextStyle(
          fontSize: PrimaryTokens.fontSizeMd,
          fontWeight: FontWeight.w600,
          color: PrimaryTokens.neutral800,
        ),
        bodyLarge: TextStyle(
          fontSize: PrimaryTokens.fontSizeMd,
          color: PrimaryTokens.neutral700,
        ),
        bodyMedium: TextStyle(
          fontSize: PrimaryTokens.fontSizeSm,
          color: PrimaryTokens.neutral700,
        ),
        bodySmall: TextStyle(
          fontSize: PrimaryTokens.fontSizeXs,
          color: PrimaryTokens.neutral600,
        ),
        labelLarge: TextStyle(
          fontSize: PrimaryTokens.fontSizeSm,
          fontWeight: FontWeight.w600,
          color: PrimaryTokens.neutral800,
        ),
      );
}
