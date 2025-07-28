---
type: procedure
category: gestionnaire-mots-de-passe
systemes:
  - macOS
  - Android
  - iOS
  - Windows
outil_recommande: Bitwarden
status: validé
created: 2025-07-25
author: Facilo Rapido
tags:
  - mot-de-passe
  - sécurité
  - bitwarden
  - multi-plateforme
  - facilo-procedure
aliases:
  - gestion mdp mixte
  - bitwarden
  - mdp multiplateforme
cssclasses:
  - procedure-outil
related:
  - - - 08_Procédures/Procedure Coffre Facilo
  - - - 📄 Analyse_Bitwarden
  - - - 08_Procédures/Intervention_Bitwarden_Installation
  - - - 📄 Fiche Client – Hannelore
  - - - 📄 Modele_Fiche_Intervention
  - - - 🧰 Outils_clients_et_interventions
---
## 🎯 Objectif
Installer et configurer **Bitwarden** comme gestionnaire de mots de passe **multi-plateforme** pour les clients ayant un écosystème hybride.  
Ce gestionnaire permet une **synchronisation sécurisée** entre Mac, Android, iOS et PC, sans dépendre de Google ou d’Apple. 

---

## 🧾 Pourquoi Bitwarden ?
- Gratuit en usage standard
- Compatible : Safari, Chrome, Firefox, iOS, Android, Windows, macOS
- Données chiffrées de bout en bout
- Accès web + apps natives + extensions navigateur
- Peut être intégré à la **méthode Facilo Coffre**

---

## ✅ Étapes d’installation

### 1. Créer un compte Bitwarden
- Se rendre sur [bitwarden.com](https://bitwarden.com)
- Cliquer sur **"Créer un compte"**
- Saisir une adresse e-mail fiable (vérifiée ensemble)
- Choisir un **mot de passe maître robuste**
  - Minimum 12 caractères
  - Conseiller une phrase de passe
- Noter ce mot de passe dans [[08_Procédures/Procedure Coffre Facilo]]

### 2. Installer Bitwarden sur tous les appareils

#### 🖥️ macOS / Windows
- Télécharger l’application de bureau ou l’extension pour navigateur
- Chrome / Firefox / Safari → Extensions → Rechercher “Bitwarden”

#### 📱 iOS / Android
- App Store / Play Store → Installer **Bitwarden**
- Ouvrir l’app, se connecter avec l’email + mot de passe maître

### 3. Activer l’auto-remplissage sur mobile

#### iOS :
- Réglages → Mots de passe → Options → **Remplir automatiquement** → Bitwarden

#### Android :
- Paramètres → Système → Langues et saisie → Auto-remplissage → Bitwarden

### 4. Tester
- Créer un mot de passe pour un site fictif
- Vérifier que Bitwarden propose d’enregistrer puis de le remplir automatiquement

---

## 🔐 Sécurisation & récupération

- Ajouter une **adresse e-mail de secours** dans les paramètres Bitwarden
- Proposer d’ajouter une **authentification 2FA** (facultatif mais conseillé)
- Vérifier l’accès depuis web : [vault.bitwarden.com](https://vault.bitwarden.com)

---

## 📎 À intégrer dans le Coffre Facilo
- Mail du compte Bitwarden
- Mot de passe maître
- Adresse de récupération (si différente)
→ Cf. [[08_Procédures/Procedure Coffre Facilo]]

---

## 🧠 Conseils Facilo au client
- Ne jamais partager son mot de passe maître
- Toujours garder une copie dans un endroit sûr (ex : carnet, coffre papier)
- Bitwarden ne peut pas retrouver un mot de passe maître perdu

---

## 🔁 Liens utiles
- [[📄 Analyse_Bitwarden]]
- [[08_Procédures/Intervention_Bitwarden_Installation]]
- [[08_Procédures/Procedure Coffre Facilo]]
- [[🧰 Outils_clients_et_interventions]]
- [[02_Offres_et_Services/📦 Packs_en_cours_de_création]]
- [[📄 Fiche Client – Hannelore]]

---

## ✅ Statut
**Procédure validée** – recommandée systématiquement pour les clients multi-plateformes (iOS/PC ou Mac/Android)