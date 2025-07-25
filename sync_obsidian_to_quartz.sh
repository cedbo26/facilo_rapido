#!/bin/zsh

# Dossier du vault Obsidian FACILO
VAULT="/Users/benaissa287/Library/Mobile Documents/iCloud~md~obsidian/Documents/FACILO"
# Dossier du repo GitHub Quartz
REPO="/Users/benaissa287/Documents/GitHub/facilo_rapido"

cd "$REPO" || exit 1

rm -rf content
cp -R "$VAULT" ./content

find ./content -name ".DS_Store" -delete
rm -rf ./content/.obsidian

git add content

if ! git diff --cached --quiet; then
  git commit -m "Sync avec Obsidian FACILO ($(date '+%Y-%m-%d %H:%M'))"
  git push
  osascript -e 'display notification "Le site Facilo Rapido a été mis à jour !" with title "Quartz Sync"'
else
  osascript -e 'display notification "Aucun changement à publier." with title "Quartz Sync"'
fi

exit 0