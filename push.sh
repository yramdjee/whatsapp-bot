#!/bin/bash
REPO="git@github.com:yramdjee/whatsapp-bot.git"
BRANCH="main"
MSG=${1:-"Atualização automática do projeto"}

git add .
git commit -m "$MSG" || echo "Nada para commitar."
git push -u origin $BRANCH
