---
type: analyse
category: outil
outil: Bitwarden
status: validé
created: 2025-07-25
author: Facilo Rapido
tags: [bitwarden, mot-de-passe, gestionnaire, sécurité, facilo-analyse]
aliases: [coffre bitwarden, mdp bitwarden, bitwarden facilo]
cssclass: fiche-outil
related:
  - [[Gestion mdp mixte macOS + Android - iOS + PC]]
  - [[Gestion mdp Windows - Android]]
  - [[Procedure Coffre Facilo]]
  - [[Intervention_Bitwarden_Installation]]
  - [[🧰 Outils_clients_et_interventions]]
---

# 🧰 Analyse outil – Bitwarden (gestionnaire de mots de passe)

## 🎯 Objectif
Bitwarden est un **gestionnaire de mots de passe sécurisé, open-source et multi-plateforme**, utilisé par Facilo Rapido pour les clients ayant un environnement **mixte** (Apple + Android / Windows + Android / iOS + PC), ou souhaitant un **coffre personnel indépendant** du système.

---

## ✅ Avantages
- 🔓 Version gratuite **très complète** (multi-appareils, stockage illimité)
- 🔐 Données chiffrées de bout en bout (AES-256)
- 🌐 Compatible avec **tous les navigateurs** : Chrome, Firefox, Safari, Brave, Edge
- 📱 Applications disponibles sur iOS, Android, Windows, macOS, Web
- 🔁 Synchronisation immédiate entre tous les appareils
- 🧠 Fonctionne avec **empreinte digitale / reconnaissance faciale**
- 📄 TOTP intégré dans la version Premium (voir plus bas)

> ⚠️ **Attention** : si le client utilise **Chrome** sur iOS ou macOS, Bitwarden est **beaucoup plus adapté** que le Trousseau iCloud.  
> Voir comparaison : [Bitwarden vs iCloud Keychain sur Chrome (reddit)](https://www.reddit.com/r/Bitwarden/comments/14os9se/bitwarden_free_plan_vs_premium/)

---

## ⚠️ Inconvénients
- 🚫 Le mot de passe maître est **indispensable et non récupérable** sans adresse de secours
- 🛑 L'interface peut sembler technique à des profils très peu autonomes
- 🔒 Certaines fonctionnalités sont **réservées au plan Premium** (ex : TOTP, pièces jointes, accès d'urgence)

---

## 💸 Tarification (2025)

| Plan                   | Prix (CHF/an) | Utilisateurs | Partage sécurisé         | Fonctions Premium     |
|------------------------|----------------|---------------|--------------------------|------------------------|
| Gratuit                | 0              | 1             | Organisation 2 pers max  | ❌                     |
| Premium individuel     | ~10            | 1             | ❌                       | ✅                     |
| Organisation familiale | ~40            | Jusqu’à 6     | ✅                       | ✅ (pour tous)         |

---

## 🛠️ Recommandation Facilo

| Contexte client                         | Recommandé ? | Variante               |
|----------------------------------------|--------------|------------------------|
| macOS + Android / iOS + PC            | ✅           | Bitwarden Free         |
| Windows + Android (profil autonome)   | ✅           | Bitwarden Free         |
| Utilisateur Chrome sur Mac/iOS        | ✅           | Bitwarden Free ou Premium |

---

## 🔐 Fonctions sécurité notables
- TOTP intégré (authentification à deux facteurs) → **Premium uniquement**
- Auto-remplissage mobile via système iOS / Android
- Intégration biométrique (Face ID, Touch ID, empreinte Android)
- Coffre crypté : identifiants, notes, cartes, identités

---

## 🔁 Liens internes
- [[Gestion mdp mixte macOS + Android - iOS + PC]]
- [[Gestion mdp Windows - Android]]
- [[Procedure Coffre Facilo]]
- [[Intervention_Bitwarden_Installation]]
- [[🧰 Outils_clients_et_interventions]]

---

## ✅ Statut
**Outil recommandé** par Facilo Rapido dans tous les cas d’usage **hors Apple 100%**.  
La version **gratuite suffit largement** pour la majorité des clients.