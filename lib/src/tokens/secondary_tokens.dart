import 'package:flutter/material.dart';
import 'primary_tokens.dart';

abstract final class SecondaryTokens {
  SecondaryTokens._();

  static const Color secondary50 = Color(0xFFF0FDF4);
  static const Color secondary100 = Color(0xFFDCFCE7);
  static const Color secondary200 = Color(0xFFBBF7D0);
  static const Color secondary300 = Color(0xFF86EFAC);
  static const Color secondary400 = Color(0xFF4ADE80);
  static const Color secondary500 = Color(0xFF22C55E);
  static const Color secondary600 = Color(0xFF16A34A);
  static const Color secondary700 = Color(0xFF15803D);
  static const Color secondary800 = Color(0xFF166534);
  static const Color secondary900 = Color(0xFF14532D);

  static const Color success = Color(0xFF22C55E);
  static const Color warning = Color(0xFFEAB308);
  static const Color error = Color(0xFFEF4444);
  static const Color info = Color(0xFF0D8AE4);

  static const double radiusXs = 4.0;
  static const double radiusSm = 8.0;
  static const double radiusMd = 12.0;
  static const double radiusLg = 16.0;
  static const double radiusXl = 24.0;
  static const double radiusFull = 9999.0;

  static const double borderWidthThin = 1.0;
  static const double borderWidthMedium = 2.0;
  static const double borderWidthThick = 4.0;

  static List<BoxShadow> get shadowSm => [
        BoxShadow(
          color: PrimaryTokens.neutral900.withValues(alpha: 0.05),
          blurRadius: 2,
          offset: const Offset(0, 1),
        ),
      ];
  static List<BoxShadow> get shadowMd => [
        BoxShadow(
          color: PrimaryTokens.neutral900.withValues(alpha: 0.08),
          blurRadius: 4,
          offset: const Offset(0, 2),
        ),
      ];
  static List<BoxShadow> get shadowLg => [
        BoxShadow(
          color: PrimaryTokens.neutral900.withValues(alpha: 0.12),
          blurRadius: 8,
          offset: const Offset(0, 4),
        ),
      ];

  static const Duration durationFast = Duration(milliseconds: 150);
  static const Duration durationNormal = Duration(milliseconds: 250);
  static const Duration durationSlow = Duration(milliseconds: 400);
}
