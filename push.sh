#!/bin/bash
# Script para commit e push usando SSH

REPO="git@github.com:yramdjee/whatsapp-bot.git"
BRANCH="main"

# Configura o remote
git remote remove origin 2>/dev/null
git remote add origin $REPO

# Adiciona e commita mudanças
git add .
git commit -m "${1:-Atualizando projeto}" || echo "Nada para commitar."

# Faz push
git push -u origin $BRANCH
chmod +x push.sh
./push.sh "Mensagem do commit"

