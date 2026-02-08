import 'package:flutter/material.dart';
import '../tokens/tokens.dart';

enum RuanCardElevation {
  none,
  low,
  medium,
  high,
}

class RuanCard extends StatelessWidget {
  const RuanCard({
    super.key,
    required this.child,
    this.padding,
    this.elevation = RuanCardElevation.low,
    this.onTap,
  });

  final Widget child;
  final EdgeInsetsGeometry? padding;
  final RuanCardElevation elevation;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final effectivePadding = padding ??
        const EdgeInsets.all(PrimaryTokens.spacingMd);
    final shadow = _shadow;
    final borderColor = elevation == RuanCardElevation.none
        ? PrimaryTokens.neutral200
        : Colors.transparent;

    return Container(
      decoration: BoxDecoration(
        color: PrimaryTokens.neutral0,
        borderRadius: BorderRadius.circular(SecondaryTokens.radiusMd),
        border: Border.all(color: borderColor),
        boxShadow: shadow,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(SecondaryTokens.radiusMd),
          child: Padding(
            padding: effectivePadding,
            child: child,
          ),
        ),
      ),
    );
  }

  List<BoxShadow> get _shadow {
    switch (elevation) {
      case RuanCardElevation.none:
        return [];
      case RuanCardElevation.low:
        return SecondaryTokens.shadowSm;
      case RuanCardElevation.medium:
        return SecondaryTokens.shadowMd;
      case RuanCardElevation.high:
        return SecondaryTokens.shadowLg;
    }
  }
}
