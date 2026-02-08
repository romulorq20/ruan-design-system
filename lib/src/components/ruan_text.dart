import 'package:flutter/material.dart';
import '../tokens/tokens.dart';

enum RuanTextStyle {
  displayLarge,
  displayMedium,
  headline,
  title,
  bodyLarge,
  bodyMedium,
  bodySmall,
  label,
}

class RuanText extends StatelessWidget {
  const RuanText(
    this.data, {
    super.key,
    this.style = RuanTextStyle.bodyMedium,
    this.color,
    this.fontWeight,
    this.textAlign,
    this.maxLines,
    this.overflow,
  });

  final String data;
  final RuanTextStyle style;
  final Color? color;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    final (fontSize, defaultWeight, defaultColor) = _styleValues;
    return Text(
      data,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow ?? (maxLines != null ? TextOverflow.ellipsis : null),
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight ?? defaultWeight,
        color: color ?? defaultColor,
        fontFamily: PrimaryTokens.fontFamily,
      ),
    );
  }

  (double, FontWeight, Color) get _styleValues {
    switch (style) {
      case RuanTextStyle.displayLarge:
        return (
          PrimaryTokens.fontSize2xl,
          FontWeight.bold,
          PrimaryTokens.neutral900,
        );
      case RuanTextStyle.displayMedium:
        return (
          PrimaryTokens.fontSizeXl,
          FontWeight.bold,
          PrimaryTokens.neutral900,
        );
      case RuanTextStyle.headline:
        return (
          PrimaryTokens.fontSizeLg,
          FontWeight.w600,
          PrimaryTokens.neutral800,
        );
      case RuanTextStyle.title:
        return (
          PrimaryTokens.fontSizeMd,
          FontWeight.w600,
          PrimaryTokens.neutral800,
        );
      case RuanTextStyle.bodyLarge:
        return (
          PrimaryTokens.fontSizeMd,
          FontWeight.normal,
          PrimaryTokens.neutral700,
        );
      case RuanTextStyle.bodyMedium:
        return (
          PrimaryTokens.fontSizeSm,
          FontWeight.normal,
          PrimaryTokens.neutral700,
        );
      case RuanTextStyle.bodySmall:
        return (
          PrimaryTokens.fontSizeXs,
          FontWeight.normal,
          PrimaryTokens.neutral600,
        );
      case RuanTextStyle.label:
        return (
          PrimaryTokens.fontSizeSm,
          FontWeight.w600,
          PrimaryTokens.neutral800,
        );
    }
  }
}
