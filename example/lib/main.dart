import 'package:flutter/material.dart';
import 'package:ruan_design_system/ruan_design_system.dart';

void main() => runApp(const ExampleApp());

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ruan Design System',
      theme: RuanTheme.light,
      home: const ExampleHome(),
    );
  }
}

class ExampleHome extends StatelessWidget {
  const ExampleHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(PrimaryTokens.spacingMd),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const RuanText('Display Large', style: RuanTextStyle.displayLarge),
              const SizedBox(height: PrimaryTokens.spacingLg),
              const RuanText('Body medium', style: RuanTextStyle.bodyMedium),
              const SizedBox(height: PrimaryTokens.spacingLg),
              RuanButton(
                label: 'Botão primário',
                onPressed: () {},
              ),
              const SizedBox(height: PrimaryTokens.spacingSm),
              RuanButton(
                label: 'Secundário',
                variant: RuanButtonVariant.secondary,
                onPressed: () {},
              ),
              const SizedBox(height: PrimaryTokens.spacingSm),
              RuanButton(
                label: 'Outline',
                variant: RuanButtonVariant.outline,
                onPressed: () {},
              ),
              const SizedBox(height: PrimaryTokens.spacingLg),
              const RuanTextInput(
                label: 'E-mail',
                hint: 'Digite seu e-mail',
              ),
              const SizedBox(height: PrimaryTokens.spacingMd),
              const RuanTextInput(
                label: 'Senha',
                hint: 'Digite sua senha',
                obscureText: true,
              ),
              const SizedBox(height: PrimaryTokens.spacingLg),
              RuanCard(
                elevation: RuanCardElevation.low,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const RuanText('Card com título', style: RuanTextStyle.title),
                    const SizedBox(height: PrimaryTokens.spacingXs),
                    const RuanText(
                      'Conteúdo do card usando tokens do design system.',
                      style: RuanTextStyle.bodyMedium,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: PrimaryTokens.spacingLg),
              const RuanText('Lista', style: RuanTextStyle.headline),
              const SizedBox(height: PrimaryTokens.spacingSm),
              RuanList(
                children: [
                  RuanListItem(
                    leading: const Icon(Icons.person, color: PrimaryTokens.primary500),
                    child: const RuanText('Item 1', style: RuanTextStyle.bodyMedium),
                    trailing: const Icon(Icons.chevron_right, color: PrimaryTokens.neutral400),
                    onTap: () {},
                  ),
                  RuanListItem(
                    leading: const Icon(Icons.settings, color: PrimaryTokens.primary500),
                    child: const RuanText('Item 2', style: RuanTextStyle.bodyMedium),
                    trailing: const Icon(Icons.chevron_right, color: PrimaryTokens.neutral400),
                    onTap: () {},
                  ),
                  RuanListItem(
                    leading: const Icon(Icons.info, color: PrimaryTokens.primary500),
                    child: const RuanText('Item 3', style: RuanTextStyle.bodyMedium),
                    trailing: const Icon(Icons.chevron_right, color: PrimaryTokens.neutral400),
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(height: PrimaryTokens.spacingLg),
              const RuanText('Lista em cards', style: RuanTextStyle.headline),
              const SizedBox(height: PrimaryTokens.spacingSm),
              RuanListCards(
                children: [
                  const RuanText('Card 1', style: RuanTextStyle.title),
                  const RuanText('Card 2', style: RuanTextStyle.title),
                  const RuanText('Card 3', style: RuanTextStyle.title),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
