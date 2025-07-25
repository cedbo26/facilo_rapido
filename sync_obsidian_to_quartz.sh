#!/bin/zsh

# Dossier du vault Obsidian FACILO
VAULT="/Users/benaissa287/Library/Mobile Documents/iCloud~md~obsidian/Documents/FACILO"
# Dossier du repo GitHub Quartz
REPO="/Users/benaissa287/Documents/GitHub/facilo_rapido"

cd "$REPO" || exit 1

# Supprimer l'ancien dossier content/
rm -rf content

# Copier tout le vault FACILO dans content/
cp -R "$VAULT" ./content

# Nettoyer les fichiers/dossiers indésirables
find ./content -name ".DS_Store" -delete
rm -rf ./content/.obsidian

# 🟢 Vérifie que _index.md existe, sinon le recrée avec un modèle minimal
if [ ! -f "./content/_index.md" ]; then
cat <<'EOF' > ./content/_index.md
---
title: Facilo Rapido – Jardin numérique
description: Tranquillité numérique, accompagnement humain. Notes et documentation interne du projet Facilo Rapido.
tags:
  - facilo
  - numérique
  - accompagnement
---

# 💻 Facilo Rapido

Bienvenue sur la base publique du projet **Facilo Rapido**, service d’assistance numérique pour les particuliers et familles.

---

## 🎯 Mission

> Simplifier la vie numérique des personnes, résoudre les problèmes techniques, réorganiser leurs accès essentiels et leur redonner de l'autonomie.

---

## 📂 Navigation

👉 [Structure des services](Structure_des_services.md)  
👉 [Pack Facilo Start](Facilo_Start.md)  
👉 [Pack Zen & Familia](Facilo_Zen_et_Familia.md)  
👉 [FAQ et procédures](FAQ.md)

*Cette page est en construction. Reviens bientôt !*
EOF
fi

# Ajouter toutes les modifications à git
git add content

# Commit seulement s'il y a des changements
if ! git diff --cached --quiet; then
  git commit -m "Sync avec Obsidian FACILO ($(date '+%Y-%m-%d %H:%M'))"
  git push
  osascript -e 'display notification "Le site Facilo Rapido a été mis à jour !" with title "Quartz Sync"'
else
  osascript -e 'display notification "Aucun changement à publier." with title "Quartz Sync"'
fi

exit 0