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

# 🟢 Écrase _index.md par la version personnalisée à chaque synchronisation
cat <<'EOF' > ./content/_index.md
---
title: 🧭 Accueil – Vault FACILO
description: Espace de travail interne pour le suivi des outils, interventions et procédures du service Facilo Rapido.
tags: [accueil, interne, organisation]
---

# 🧭 FACILO – Espace de documentation interne

Bienvenue dans le **Vault FACILO**, la base de connaissance interne du service **Facilo Rapido**.

> Ce site est destiné exclusivement à **l’usage interne** de l’équipe Facilo (administration, terrain, technique, partenaires proches).

---

## 📂 Navigation rapide

Vous pouvez explorer les contenus structurés par section dans le menu latéral ou utiliser la recherche en haut de page.

### 🔍 Accès rapide aux sections principales :

- 📁 **[Fiches clients](../Clients)** : informations, packs actifs, suivi personnalisé
- 🛠️ **[Fiches interventions](../Interventions)** : toutes les actions réalisées sur le terrain ou à distance
- 📄 **[Procédures & modèles](../07_Templates_Obsidian)** : guides réutilisables, templates standard
- 🧰 **[Outils et configuration technique](../03_Structure_technique)** : scripts, exports, infrastructures
- 💼 **[Business, offres et finances](../01_Business_Design)** : grille tarifaire, business model, projections
- 🗂️ **[Annexes & documents externes](../08_Annexes)** : captures, pièces justificatives

---

## 🧠 À propos de ce site

- Géré depuis **Obsidian** avec une structure modulaire et des fichiers interconnectés
- Ce site est mis à jour automatiquement depuis le dossier local :  
  `/Users/benaissa287/Library/Mobile Documents/iCloud~md~obsidian/Documents/FACILO`

---

📌 Pour tout nouveau fichier :
- Pensez à bien remplir les **propriétés YAML** (`type`, `tags`, `status`, etc.)
- Lier les documents entre eux via `[[rétroliens]]`

---

🔐 **Usage privé uniquement** – ne pas partager en dehors de l’équipe.
EOF

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