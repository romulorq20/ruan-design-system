import 'package:flutter/material.dart';
import '../tokens/tokens.dart';
import 'ruan_card.dart';

class RuanListItem extends StatelessWidget {
  const RuanListItem({
    super.key,
    required this.child,
    this.leading,
    this.trailing,
    this.onTap,
  });

  final Widget child;
  final Widget? leading;
  final Widget? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: PrimaryTokens.neutral0,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: PrimaryTokens.spacingMd,
            vertical: PrimaryTokens.spacingSm,
          ),
          child: Row(
            children: [
              if (leading != null) ...[
                leading!,
                const SizedBox(width: PrimaryTokens.spacingMd),
              ],
              Expanded(child: child),
              if (trailing != null) ...[
                const SizedBox(width: PrimaryTokens.spacingSm),
                trailing!,
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class RuanList extends StatelessWidget {
  const RuanList({
    super.key,
    required this.children,
    this.separator = true,
    this.scrollPhysics,
    this.padding,
  });

  final List<Widget> children;
  final bool separator;
  final ScrollPhysics? scrollPhysics;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: scrollPhysics ?? const NeverScrollableScrollPhysics(),
      padding: padding ?? const EdgeInsets.symmetric(vertical: PrimaryTokens.spacingXs),
      itemCount: children.length,
      separatorBuilder: separator
          ? (_, __) => Divider(
                height: 1,
                thickness: 1,
                color: PrimaryTokens.neutral200,
                indent: PrimaryTokens.spacingMd,
                endIndent: PrimaryTokens.spacingMd,
              )
          : (_, __) => const SizedBox.shrink(),
      itemBuilder: (context, index) => children[index],
    );
  }
}

class RuanListCards extends StatelessWidget {
  const RuanListCards({
    super.key,
    required this.children,
    this.spacing = PrimaryTokens.spacingSm,
    this.scrollPhysics,
    this.padding,
  });

  final List<Widget> children;
  final double spacing;
  final ScrollPhysics? scrollPhysics;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: scrollPhysics ?? const NeverScrollableScrollPhysics(),
      padding: padding ?? const EdgeInsets.symmetric(vertical: PrimaryTokens.spacingSm),
      itemCount: children.length,
      separatorBuilder: (_, __) => SizedBox(height: spacing),
      itemBuilder: (context, index) => RuanCard(
        elevation: RuanCardElevation.low,
        child: children[index],
      ),
    );
  }
}
