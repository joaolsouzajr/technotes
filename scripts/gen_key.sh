#!/usr/bin/env bash
set -euo pipefail

# Uso:
#   ./gen_key.sh <alias> <hostname> <email> [passphrase]
#
# Exemplos:
#   ./gen_key.sh github-personal github.com pessoal@email.com
#   ./gen_key.sh forgejo-sunvitafarma forgejo.sunvitafarma.com.br sunvitafarma@email.com "minha_passphrase"

ALIAS="${1:?Uso: $0 <alias> <hostname> <email> [passphrase]}"
HOSTNAME="${2:?Faltou hostname}"
EMAIL="${3:?Faltou email}"
PASSPHRASE="${4:-}"

KEYFILE="$HOME/.ssh/id_ed25519_${ALIAS}"
SSH_CONFIG="$HOME/.ssh/config"

# 1. Gerar chave
if [[ -f "$KEYFILE" ]]; then
    echo "⚠️  Chave já existe: $KEYFILE"
    read -rp "Substituir? [s/N] " confirm
    [[ "${confirm,,}" == "s" ]] || exit 1
    rm -f "$KEYFILE" "$KEYFILE.pub"
fi

if [[ -n "$PASSPHRASE" ]]; then
    ssh-keygen -t ed25519 -C "$EMAIL" -f "$KEYFILE" -N "$PASSPHRASE"
else
    read -rsp "Passphrase (vazio para nenhuma): " PASSPHRASE; echo
    ssh-keygen -t ed25519 -C "$EMAIL" -f "$KEYFILE" -N ""
fi

# 2. Atualizar ~/.ssh/config (sem duplicar)
touch "$SSH_CONFIG"
chmod 600 "$SSH_CONFIG"

if grep -q "^Host ${ALIAS}$" "$SSH_CONFIG"; then
    echo "⚠️  Host '${ALIAS}' já existe no $SSH_CONFIG — atualizando..."
    # Remove bloco antigo
    sed -i "/^Host ${ALIAS}$/,/^$/d" "$SSH_CONFIG"
fi

cat >> "$SSH_CONFIG" <<EOF
Host ${ALIAS}
    HostName ${HOSTNAME}
    User git
    IdentityFile ${KEYFILE}
    IdentitiesOnly yes

EOF

echo "✅ Chave gerada: $KEYFILE"
echo "✅ Alias '${ALIAS}' adicionado ao $SSH_CONFIG"
echo ""
echo "Próximos passos:"
echo "  1. Adicionar a chave pública ao serviço:"
echo "     cat $KEYFILE.pub"
echo "  2. Testar:"
echo "     ssh -T git@${ALIAS}"
