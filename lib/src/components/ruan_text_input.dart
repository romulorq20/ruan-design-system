import 'package:flutter/material.dart';
import '../tokens/tokens.dart';
import 'ruan_text.dart';

class RuanTextInput extends StatelessWidget {
  const RuanTextInput({
    super.key,
    this.controller,
    this.label,
    this.hint,
    this.obscureText = false,
    this.enabled = true,
    this.maxLines = 1,
    this.errorText,
    this.onChanged,
    this.onSubmitted,
    this.prefixIcon,
    this.suffixIcon,
    this.keyboardType,
    this.textInputAction,
  });

  final TextEditingController? controller;
  final String? label;
  final String? hint;
  final bool obscureText;
  final bool enabled;
  final int maxLines;
  final String? errorText;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (label != null && label!.isNotEmpty) ...[
          RuanText(
            label!,
            style: RuanTextStyle.label,
          ),
          const SizedBox(height: PrimaryTokens.spacingXs),
        ],
        Container(
          decoration: BoxDecoration(
            color: enabled ? PrimaryTokens.neutral50 : PrimaryTokens.neutral100,
            borderRadius: BorderRadius.circular(SecondaryTokens.radiusSm),
            border: Border.all(
              color: errorText != null
                  ? SecondaryTokens.error
                  : PrimaryTokens.neutral200,
              width: SecondaryTokens.borderWidthThin,
            ),
            boxShadow: SecondaryTokens.shadowSm,
          ),
          child: TextField(
            controller: controller,
            obscureText: obscureText,
            enabled: enabled,
            maxLines: maxLines,
            onChanged: onChanged,
            onSubmitted: onSubmitted,
            keyboardType: keyboardType,
            textInputAction: textInputAction,
            style: TextStyle(
              fontSize: PrimaryTokens.fontSizeMd,
              color: PrimaryTokens.neutral800,
              fontFamily: PrimaryTokens.fontFamily,
            ),
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(
                color: PrimaryTokens.neutral400,
                fontSize: PrimaryTokens.fontSizeSm,
              ),
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              focusedErrorBorder: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: PrimaryTokens.spacingMd,
                vertical: PrimaryTokens.spacingSm,
              ),
            ),
          ),
        ),
        if (errorText != null && errorText!.isNotEmpty) ...[
          const SizedBox(height: PrimaryTokens.spacingXs),
          Text(
            errorText!,
            style: TextStyle(
              fontSize: PrimaryTokens.fontSizeXs,
              color: SecondaryTokens.error,
              fontFamily: PrimaryTokens.fontFamily,
            ),
          ),
        ],
      ],
    );
  }
}
