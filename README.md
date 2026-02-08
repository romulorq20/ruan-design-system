# Ruan Design System

Biblioteca Flutter de Design System com tokens e componentes para apps mobile (Android e iOS).

---

## Tokens primários

Base visual do sistema: cor principal, neutros, espaçamento e tipografia.

### Cores primárias

Escala de azul para ações principais e identidade.

| Token | Uso |
|-------|-----|
| `PrimaryTokens.primary50` … `primary900` | `primary500` é a cor principal; demais para hover, fundos e variações |

Valores: `primary50` (#E8F4FD) até `primary900` (#010F2E). Principal: `primary500` (#0D8AE4).

### Neutros

Textos, fundos e bordas.

| Token | Uso |
|-------|-----|
| `PrimaryTokens.neutral0` | Branco, fundos de card/surface |
| `PrimaryTokens.neutral50` … `neutral900` | Fundos suaves (50–100), bordas (200–300), texto secundário (400–500), texto principal (700–900) |

### Espaçamento

Múltiplos de 4px. Use nos paddings e gaps.

| Token | Valor |
|-------|--------|
| `PrimaryTokens.spacingXs` | 4 |
| `PrimaryTokens.spacingSm` | 8 |
| `PrimaryTokens.spacingMd` | 16 |
| `PrimaryTokens.spacingLg` | 24 |
| `PrimaryTokens.spacingXl` | 32 |
| `PrimaryTokens.spacing2xl` | 48 |

### Tipografia

| Token | Valor | Uso |
|-------|--------|-----|
| `PrimaryTokens.fontFamily` | Roboto | Fonte padrão |
| `PrimaryTokens.fontSizeXs` | 12 | Legendas, hints |
| `PrimaryTokens.fontSizeSm` | 14 | Body pequeno, labels |
| `PrimaryTokens.fontSizeMd` | 16 | Body, títulos de card |
| `PrimaryTokens.fontSizeLg` | 18 | Headlines |
| `PrimaryTokens.fontSizeXl` | 20 | Títulos de seção |
| `PrimaryTokens.fontSize2xl` | 24 | Display |

---

## Tokens secundários

Reforço visual: cor secundária, feedback, raios, bordas, sombras e animações.

### Cores secundárias

Escala verde para destaque e ações secundárias.

| Token | Uso |
|-------|-----|
| `SecondaryTokens.secondary50` … `secondary900` | `secondary500` (#22C55E) é o acento principal |

### Cores semânticas

Feedback (sucesso, aviso, erro, informação).

| Token | Uso |
|-------|-----|
| `SecondaryTokens.success` | Sucesso, confirmação |
| `SecondaryTokens.warning` | Aviso |
| `SecondaryTokens.error` | Erro, validação |
| `SecondaryTokens.info` | Informação |

### Raios de borda

| Token | Valor (px) |
|-------|-----------|
| `SecondaryTokens.radiusXs` | 4 |
| `SecondaryTokens.radiusSm` | 8 |
| `SecondaryTokens.radiusMd` | 12 |
| `SecondaryTokens.radiusLg` | 16 |
| `SecondaryTokens.radiusXl` | 24 |
| `SecondaryTokens.radiusFull` | 9999 (pill) |

### Bordas

| Token | Valor (px) |
|-------|-----------|
| `SecondaryTokens.borderWidthThin` | 1 |
| `SecondaryTokens.borderWidthMedium` | 2 |
| `SecondaryTokens.borderWidthThick` | 4 |

### Sombras

Elevação (cards, botões).

| Token | Uso |
|-------|-----|
| `SecondaryTokens.shadowSm` | Pouca elevação |
| `SecondaryTokens.shadowMd` | Média |
| `SecondaryTokens.shadowLg` | Alta |

### Duração de animação

| Token | Valor |
|-------|--------|
| `SecondaryTokens.durationFast` | 150 ms |
| `SecondaryTokens.durationNormal` | 250 ms |
| `SecondaryTokens.durationSlow` | 400 ms |

---

## Componentes

### RuanButton

Botão com variantes e tamanhos usando os tokens.

**Parâmetros**

| Parâmetro | Tipo | Obrigatório | Padrão | Descrição |
|----------|------|------------|--------|-----------|
| `label` | `String` | sim | — | Texto do botão |
| `onPressed` | `VoidCallback?` | não | null | Ação ao toque; null = desabilitado |
| `variant` | `RuanButtonVariant` | não | primary | primary, secondary, outline, ghost |
| `size` | `RuanButtonSize` | não | medium | small (36px), medium (44px), large (52px) |
| `icon` | `Widget?` | não | null | Ícone à esquerda do texto |
| `isLoading` | `bool` | não | false | Exibe indicador de carregamento |

**Variantes**

- **primary**: fundo `primary500`, texto branco, sombra leve.
- **secondary**: fundo `secondary500`, texto branco.
- **outline**: borda `primary500`, fundo transparente, texto primary.
- **ghost**: sem borda, fundo transparente, texto primary.

**Exemplo**

```dart
RuanButton(
  label: 'Salvar',
  onPressed: () => save(),
  variant: RuanButtonVariant.primary,
  size: RuanButtonSize.medium,
)

RuanButton(
  label: 'Carregando...',
  onPressed: null,
  isLoading: true,
)
```

---

### RuanText

Texto com estilos pré-definidos do design system.

**Parâmetros**

| Parâmetro | Tipo | Obrigatório | Padrão | Descrição |
|----------|------|------------|--------|-----------|
| `data` | `String` | sim | — | Conteúdo |
| `style` | `RuanTextStyle` | não | bodyMedium | Estilo (tamanho, peso, cor) |
| `color` | `Color?` | não | null | Sobrescreve a cor do estilo |
| `fontWeight` | `FontWeight?` | não | null | Sobrescreve o peso |
| `textAlign` | `TextAlign?` | não | null | Alinhamento |
| `maxLines` | `int?` | não | null | Limite de linhas |
| `overflow` | `TextOverflow?` | não | null | Ellipsis se maxLines definido |

**Estilos (RuanTextStyle)**

| Estilo | Tamanho | Peso | Uso |
|--------|---------|------|-----|
| displayLarge | 24 | bold | Título de tela |
| displayMedium | 20 | bold | Título grande |
| headline | 18 | w600 | Cabeçalho de seção |
| title | 16 | w600 | Título de card/item |
| bodyLarge | 16 | normal | Parágrafo |
| bodyMedium | 14 | normal | Texto padrão |
| bodySmall | 12 | normal | Legendas |
| label | 14 | w600 | Labels de campo |

**Exemplo**

```dart
RuanText('Bem-vindo', style: RuanTextStyle.displayLarge)
RuanText('Descrição do item', style: RuanTextStyle.bodyMedium, maxLines: 2)
```

---

### RuanTextInput

Campo de texto com label, hint, erro e ícones.

**Parâmetros**

| Parâmetro | Tipo | Obrigatório | Padrão | Descrição |
|----------|------|------------|--------|-----------|
| `controller` | `TextEditingController?` | não | null | Controlador do texto |
| `label` | `String?` | não | null | Label acima do campo |
| `hint` | `String?` | não | null | Placeholder |
| `obscureText` | `bool` | não | false | Oculta texto (senha) |
| `enabled` | `bool` | não | true | Habilita/desabilita |
| `maxLines` | `int` | não | 1 | Linhas (1 = single line) |
| `errorText` | `String?` | não | null | Mensagem de erro abaixo |
| `onChanged` | `ValueChanged<String>?` | não | null | Callback ao mudar |
| `onSubmitted` | `ValueChanged<String>?` | não | null | Callback ao submeter |
| `prefixIcon` | `Widget?` | não | null | Ícone à esquerda |
| `suffixIcon` | `Widget?` | não | null | Ícone à direita |
| `keyboardType` | `TextInputType?` | não | null | Tipo de teclado |
| `textInputAction` | `TextInputAction?` | não | null | Ação do teclado |

**Exemplo**

```dart
RuanTextInput(
  label: 'E-mail',
  hint: 'seu@email.com',
  keyboardType: TextInputType.emailAddress,
)

RuanTextInput(
  label: 'Senha',
  hint: '••••••••',
  obscureText: true,
  errorText: _passwordError,
)
```

---

### RuanCard

Container com borda, sombra e toque opcional.

**Parâmetros**

| Parâmetro | Tipo | Obrigatório | Padrão | Descrição |
|----------|------|------------|--------|-----------|
| `child` | `Widget` | sim | — | Conteúdo |
| `padding` | `EdgeInsetsGeometry?` | não | 16 (todos) | Padding interno |
| `elevation` | `RuanCardElevation` | não | low | none, low, medium, high |
| `onTap` | `VoidCallback?` | não | null | Callback ao tocar (opcional) |

**Elevação**

- **none**: sem sombra, borda `neutral200`.
- **low**: `shadowSm`.
- **medium**: `shadowMd`.
- **high**: `shadowLg`.

**Exemplo**

```dart
RuanCard(
  elevation: RuanCardElevation.low,
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      RuanText('Título', style: RuanTextStyle.title),
      SizedBox(height: PrimaryTokens.spacingXs),
      RuanText('Conteúdo.', style: RuanTextStyle.bodyMedium),
    ],
  ),
)

RuanCard(
  elevation: RuanCardElevation.medium,
  onTap: () => openDetail(),
  child: ...,
)
```

---

### RuanListItem

Uma linha de lista com leading, conteúdo e trailing.

**Parâmetros**

| Parâmetro | Tipo | Obrigatório | Padrão | Descrição |
|----------|------|------------|--------|-----------|
| `child` | `Widget` | sim | — | Conteúdo central (geralmente texto) |
| `leading` | `Widget?` | não | null | Ícone ou widget à esquerda |
| `trailing` | `Widget?` | não | null | Ícone ou widget à direita |
| `onTap` | `VoidCallback?` | não | null | Ação ao tocar |

**Exemplo**

```dart
RuanListItem(
  leading: Icon(Icons.person, color: PrimaryTokens.primary500),
  child: RuanText('Perfil', style: RuanTextStyle.bodyMedium),
  trailing: Icon(Icons.chevron_right, color: PrimaryTokens.neutral400),
  onTap: () => goToProfile(),
)
```

---

### RuanList

ListView com itens e separadores opcionais.

**Parâmetros**

| Parâmetro | Tipo | Obrigatório | Padrão | Descrição |
|----------|------|------------|--------|-----------|
| `children` | `List<Widget>` | sim | — | Itens (ex.: RuanListItem) |
| `separator` | `bool` | não | true | Mostra divisor entre itens |
| `scrollPhysics` | `ScrollPhysics?` | não | NeverScrollableScrollPhysics | Físicas de scroll |
| `padding` | `EdgeInsetsGeometry?` | não | vertical 4 | Padding da lista |

**Exemplo**

```dart
RuanList(
  children: [
    RuanListItem(child: RuanText('Item 1', style: RuanTextStyle.bodyMedium), onTap: () {}),
    RuanListItem(child: RuanText('Item 2', style: RuanTextStyle.bodyMedium), onTap: () {}),
  ],
)
```

---

### RuanListCards

ListView em que cada item é envolvido em um `RuanCard`.

**Parâmetros**

| Parâmetro | Tipo | Obrigatório | Padrão | Descrição |
|----------|------|------------|--------|-----------|
| `children` | `List<Widget>` | sim | — | Conteúdo de cada card |
| `spacing` | `double` | não | spacingSm (8) | Espaço entre cards |
| `scrollPhysics` | `ScrollPhysics?` | não | NeverScrollableScrollPhysics | Físicas de scroll |
| `padding` | `EdgeInsetsGeometry?` | não | vertical 8 | Padding da lista |

**Exemplo**

```dart
RuanListCards(
  spacing: PrimaryTokens.spacingMd,
  children: [
    RuanText('Card 1', style: RuanTextStyle.title),
    RuanText('Card 2', style: RuanTextStyle.title),
  ],
)
```

---

## Como usar a lib nos projetos

### 1. Adicionar dependência

No `pubspec.yaml` do seu app (ou pacote):

```yaml
dependencies:
  flutter:
    sdk: flutter
  ruan_design_system:
    path: ../Ruan-Design-System
```

Se o repositório for remoto:

```yaml
dependencies:
  ruan_design_system:
    git:
      url: https://github.com/seu-usuario/ruan-design-system.git
      path: .
```

### 2. Aplicar o tema

No ponto de entrada do app (ex.: `main.dart`), use `RuanTheme.light` no `MaterialApp`:

```dart
import 'package:flutter/material.dart';
import 'package:ruan_design_system/ruan_design_system.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu App',
      theme: RuanTheme.light,
      home: const HomePage(),
    );
  }
}
```

### 3. Import único

Todos os tokens, tema e componentes saem de um único import:

```dart
import 'package:ruan_design_system/ruan_design_system.dart';
```

A partir daí você pode usar:

- `RuanTheme.light`
- `PrimaryTokens.*` e `SecondaryTokens.*`
- `RuanButton`, `RuanText`, `RuanTextInput`, `RuanCard`, `RuanList`, `RuanListItem`, `RuanListCards`
- Enums: `RuanButtonVariant`, `RuanButtonSize`, `RuanTextStyle`, `RuanCardElevation`

### 4. Exemplo mínimo de tela

```dart
import 'package:flutter/material.dart';
import 'package:ruan_design_system/ruan_design_system.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(PrimaryTokens.spacingMd),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const RuanText('Olá', style: RuanTextStyle.displayLarge),
              const SizedBox(height: PrimaryTokens.spacingLg),
              RuanButton(
                label: 'Entrar',
                onPressed: () {},
              ),
              const SizedBox(height: PrimaryTokens.spacingMd),
              const RuanTextInput(
                label: 'E-mail',
                hint: 'Digite seu e-mail',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```

### 5. Usar só tokens (sem componentes)

Se quiser manter seus próprios widgets e só padronizar cores e medidas:

```dart
Container(
  padding: const EdgeInsets.all(PrimaryTokens.spacingMd),
  decoration: BoxDecoration(
    color: PrimaryTokens.neutral0,
    borderRadius: BorderRadius.circular(SecondaryTokens.radiusMd),
    boxShadow: SecondaryTokens.shadowSm,
  ),
  child: Text(
    'Texto',
    style: TextStyle(
      fontSize: PrimaryTokens.fontSizeMd,
      color: PrimaryTokens.neutral800,
      fontFamily: PrimaryTokens.fontFamily,
    ),
  ),
)
```

---

## Estrutura do pacote

```
lib/
├── ruan_design_system.dart
└── src/
    ├── tokens/
    │   ├── primary_tokens.dart
    │   ├── secondary_tokens.dart
    │   └── tokens.dart
    ├── theme/
    │   └── ruan_theme.dart
    └── components/
        ├── ruan_button.dart
        ├── ruan_text.dart
        ├── ruan_text_input.dart
        ├── ruan_card.dart
        ├── ruan_list.dart
        └── components.dart
```

## Exemplo

App de exemplo (Android e iOS) em `example/`:

```bash
cd example
flutter pub get
flutter run
```

## Licença

MIT
