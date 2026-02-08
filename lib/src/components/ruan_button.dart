import 'package:flutter/material.dart';
import '../tokens/tokens.dart';

enum RuanButtonVariant {
  primary,
  secondary,
  outline,
  ghost,
}

class RuanButton extends StatelessWidget {
  const RuanButton({
    super.key,
    required this.label,
    this.onPressed,
    this.variant = RuanButtonVariant.primary,
    this.size = RuanButtonSize.medium,
    this.icon,
    this.isLoading = false,
  });

  final String label;
  final VoidCallback? onPressed;
  final RuanButtonVariant variant;
  final RuanButtonSize size;
  final Widget? icon;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final (height, padding, fontSize) = _sizeValues;
    final enabled = onPressed != null && !isLoading;

    return AnimatedContainer(
      duration: SecondaryTokens.durationFast,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
        color: _backgroundColor(enabled),
        borderRadius: BorderRadius.circular(SecondaryTokens.radiusMd),
        border: variant == RuanButtonVariant.outline
            ? Border.all(color: PrimaryTokens.primary500)
            : null,
        boxShadow: variant == RuanButtonVariant.primary && enabled
            ? SecondaryTokens.shadowSm
            : null,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: enabled ? onPressed : null,
          borderRadius: BorderRadius.circular(SecondaryTokens.radiusMd),
          child: Center(
            child: isLoading
                ? SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      valueColor: AlwaysStoppedAnimation<Color>(
                        _contentColor(enabled),
                      ),
                    ),
                  )
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (icon != null) ...[
                        icon!,
                        SizedBox(width: PrimaryTokens.spacingXs),
                      ],
                      Text(
                        label,
                        style: TextStyle(
                          fontSize: fontSize,
                          fontWeight: FontWeight.w600,
                          color: _contentColor(enabled),
                        ),
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }

  (double, EdgeInsets, double) get _sizeValues {
    switch (size) {
      case RuanButtonSize.small:
        return (
          36,
          const EdgeInsets.symmetric(
            horizontal: PrimaryTokens.spacingSm,
            vertical: PrimaryTokens.spacingXs,
          ),
          PrimaryTokens.fontSizeSm,
        );
      case RuanButtonSize.medium:
        return (
          44,
          const EdgeInsets.symmetric(
            horizontal: PrimaryTokens.spacingMd,
            vertical: PrimaryTokens.spacingSm,
          ),
          PrimaryTokens.fontSizeMd,
        );
      case RuanButtonSize.large:
        return (
          52,
          const EdgeInsets.symmetric(
            horizontal: PrimaryTokens.spacingLg,
            vertical: PrimaryTokens.spacingMd,
          ),
          PrimaryTokens.fontSizeLg,
        );
    }
  }

  Color _backgroundColor(bool enabled) {
    if (!enabled) return PrimaryTokens.neutral200;
    switch (variant) {
      case RuanButtonVariant.primary:
        return PrimaryTokens.primary500;
      case RuanButtonVariant.secondary:
        return SecondaryTokens.secondary500;
      case RuanButtonVariant.outline:
      case RuanButtonVariant.ghost:
        return Colors.transparent;
    }
  }

  Color _contentColor(bool enabled) {
    if (!enabled) return PrimaryTokens.neutral500;
    switch (variant) {
      case RuanButtonVariant.primary:
      case RuanButtonVariant.secondary:
        return PrimaryTokens.neutral0;
      case RuanButtonVariant.outline:
      case RuanButtonVariant.ghost:
        return PrimaryTokens.primary500;
    }
  }
}

enum RuanButtonSize {
  small,
  medium,
  large,
}
