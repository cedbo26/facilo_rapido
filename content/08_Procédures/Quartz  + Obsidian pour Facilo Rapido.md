
## 1. Structure technique

- **Vault Obsidian**  
  `/Users/benaissa287/Library/Mobile Documents/iCloud~md~obsidian/Documents/FACILO`
- **Dépôt Quartz/GitHub**  
  `/Users/benaissa287/Documents/GitHub/facilo_rapido`
- **Le dossier `content/`** du dépôt est synchronisé depuis le vault Obsidian.

---

## 2. Script de synchronisation automatique

**Nom** : `sync_obsidian_to_quartz.sh`  
**Emplacement** : dans le dossier du dépôt Quartz

```bash
#!/bin/zsh

# Dossier du vault Obsidian FACILO
VAULT="/Users/benaissa287/Library/Mobile Documents/iCloud~md~obsidian/Documents/FACILO"
# Dossier du repo GitHub Quartz
REPO="/Users/benaissa287/Documents/GitHub/facilo_rapido"

cd "$REPO" || exit 1

# Supprimer l'ancien dossier content/
rm -rf content

# Copier FACILO dans content/
cp -R "$VAULT" ./content

# Nettoyer les fichiers inutiles
find ./content -name ".DS_Store" -delete
rm -rf ./content/.obsidian

# Ajouter et commit
git add content
if ! git diff --cached --quiet; then
  git commit -m "Sync avec Obsidian FACILO ($(date '+%Y-%m-%d %H:%M'))"
  git push
  osascript -e 'display notification "Le site Facilo Rapido a été mis à jour !" with title "Quartz Sync"'
else
  osascript -e 'display notification "Aucun changement à publier." with title "Quartz Sync"'
fi
exit 0
```

## 3. Raccourci d’exécution (macOS)

- Ouvre **Raccourcis** > Crée un nouveau raccourci intitulé  
  **"Publish FACILO Obsidian to web"** ![[Shell_raccourci_Obsidian to web.png]]
- Action : **Exécuter le script Shell**  
  `/Users/benaissa287/Documents/GitHub/facilo_rapido/sync_obsidian_to_quartz.sh`
- Shell : `zsh`
- Entrée : `Entrée`
- Transmettre l’entrée : `vers stdin`
- (Optionnel) Ajoute ce raccourci à la Touch Bar, Dock, ou Spotlight pour le lancer en 1 clic.

---

## 4. Procédure de mise à jour

1. **Édite/crée** des notes dans Obsidian (vault FACILO).
2. **Lance le raccourci** (voir ci-dessus).
3. Le script :
   - Remplace le dossier `content` du dépôt Quartz par le vault FACILO,
   - Supprime les fichiers indésirables,
   - Commit & push automatiquement sur GitHub,
   - Affiche une notification du résultat.
4. **Quartz (GitHub Actions)** publie automatiquement la nouvelle version sur GitHub Pages.

---

## 5. Où se trouvent les fichiers ?

| Élément                      | Emplacement                                                              |
|------------------------------|--------------------------------------------------------------------------|
| **Vault Obsidian FACILO**    | `/Users/benaissa287/Library/Mobile Documents/iCloud~md~obsidian/Documents/FACILO` |
| **Dépôt Quartz (GitHub)**    | `/Users/benaissa287/Documents/GitHub/facilo_rapido`                      |
| **Script de synchronisation**| `/Users/benaissa287/Documents/GitHub/facilo_rapido/sync_obsidian_to_quartz.sh` |
| **Dossier de contenu Quartz**| `/Users/benaissa287/Documents/GitHub/facilo_rapido/content`               |
| **Config Quartz**            | `/Users/benaissa287/Documents/GitHub/facilo_rapido/quartz.config.ts`      |
| **Site publié**              | `https://cedbo26.github.io/facilo_rapido/`                                |


