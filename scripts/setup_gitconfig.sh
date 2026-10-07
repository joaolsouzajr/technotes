#!/usr/bin/env bash
set -euo pipefail

HOME_DIR="$HOME"

# Remove arquivos antigos
rm -f "$HOME_DIR/.gitconfig" \
      "$HOME_DIR/.gitconfig-personal" \
      "$HOME_DIR/.gitconfig-sunvitafarma" \
      "$HOME_DIR/.gitconfig-tw"

# --- ~/.gitconfig (principal) ---
cat > "$HOME_DIR/.gitconfig" <<'EOF'
[includeIf "gitdir:~/Workspace/**"]
    path = .gitconfig-personal
[includeIf "gitdir:~/Workspace/sunvitafarma/**"]
    path = .gitconfig-sunvitafarma
[init]
    defaultBranch = main
[safe]
    directory = *
EOF

# --- ~/.gitconfig-personal ---
cat > "$HOME_DIR/.gitconfig-personal" <<'EOF'
[user]
    name = joaolsouzajr
    email = joaolourencojr@gmail.com

[url "ssh://git@github/"]
    insteadOf = https://github.com/
[url "ssh://git@codeberg/"]
    insteadOf = https://forgejo.sunvitafarma.com.br/
EOF

# --- ~/.gitconfig-sunvitafarma ---
cat > "$HOME_DIR/.gitconfig-sunvitafarma" <<'EOF'
[user]
    name = joao
    email = joao@sunvitafarma.com.br

[url "ssh://git@github-sunvitafarma/"]
    insteadOf = https://github.com/
[url "ssh://git@forgejo-sunvitafarma/"]
    insteadOf = https://forgejo.sunvitafarma.com.br/
EOF

echo "✅ Arquivos criados:"
echo "   ~/.gitconfig"
echo "   ~/.gitconfig-personal"
echo "   ~/.gitconfig-sunvitafarma"
echo ""
echo "Verifique com: git config --list --show-origin"
