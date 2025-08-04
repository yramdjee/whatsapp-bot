#!/bin/bash
# Script automático para commit e push via SSH

REPO="git@github.com:yramdjee/whatsapp-bot.git"
BRANCH="main"
MSG=${1:-"Atualizando projeto automaticamente"}

# Ajustar remote
git remote remove origin 2>/dev/null
git remote add origin $REPO

# Commit e push
git add .
git commit -m "$MSG" || echo "Nada para commitar."
git push -u origin $BRANCH
