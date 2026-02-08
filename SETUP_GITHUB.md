# Criar repositório no GitHub e enviar o projeto

Siga estes passos para publicar a lib no seu GitHub.

## 1. Criar o repositório no GitHub

1. Acesse [github.com](https://github.com) e faça login.
2. Clique em **+** (canto superior direito) → **New repository**.
3. Preencha:
   - **Repository name:** `ruan-design-system` (ou outro nome).
   - **Description:** Design System Flutter – tokens e componentes para mobile.
   - **Public**.
   - **Não** marque "Add a README", "Add .gitignore" nem "Choose a license" (o projeto já tem).
4. Clique em **Create repository**.

## 2. Inicializar Git e fazer o primeiro push (no seu PC)

Abra o terminal na pasta do projeto e rode:

```bash
cd c:\Users\ruanr\Documents\repo\Flutter\Ruan-Design-System

git init
git add .
git commit -m "Initial commit: Ruan Design System - tokens e componentes"
git branch -M main
git remote add origin https://github.com/SEU_USUARIO/ruan-design-system.git
git push -u origin main
```

Substitua **SEU_USUARIO** pelo seu usuário do GitHub (ex.: `ruanr`).

Se o repositório tiver outro nome, use o mesmo nome na URL:

```text
https://github.com/SEU_USUARIO/NOME_DO_REPO.git
```

## 3. Autenticação

- Se pedir usuário/senha, use um **Personal Access Token** no lugar da senha (GitHub não aceita mais senha comum no push).
- Para criar um token: GitHub → **Settings** → **Developer settings** → **Personal access tokens** → **Generate new token**. Marque pelo menos `repo`.
- Ou use **GitHub CLI** (`gh auth login`) ou **SSH** em vez de HTTPS.

## 4. Atualizar o README do projeto (opcional)

Depois de publicar, troque no `pubspec.yaml` e no README as URLs de exemplo:

- `https://github.com/your-org/ruan-design-system`  
por  
- `https://github.com/SEU_USUARIO/ruan-design-system`

Assim quem for usar a lib terá o link correto para o repositório.
