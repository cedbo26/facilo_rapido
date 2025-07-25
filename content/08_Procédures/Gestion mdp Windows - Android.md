---
type: procedure
category: gestionnaire-mots-de-passe
systemes: [Windows, Android]
outil_recommande: Google Password Manager (ou Bitwarden)
status: validé
created: 2025-07-25
author: Facilo Rapido
tags: [mot-de-passe, sécurité, android, windows, google, bitwarden, facilo-procedure]
aliases: [gestion mdp google, mdp android-pc, bitwarden pc]
cssclass: procedure-outil
related:
  - [[Procedure Coffre Facilo]]
  - [[📄 Analyse_Google_Password_Manager]]
  - [[📄 Analyse_Bitwarden]]
  - [[📄 Intervention_Installation_Gestionnaire_MDP]]
  - [[📄 Fiche Client – Jean Dupont]]
  - [[🧰 Outils_clients_et_interventions]]
---

## 🎯 Objectif
Installer et configurer un **gestionnaire de mots de passe** adapté à un environnement 100% Google (Android + Chrome sur Windows).  
Deux options sont proposées en fonction du niveau du client :

- **Google Password Manager** (par défaut – simple, sans app tierce)
- **Bitwarden** (plus sécurisé – recommandé pour profils plus autonomes)

---

## 🟢 Option 1 : Google Password Manager (client débutant)

### ✅ Étapes de mise en place

#### 1. Vérifier le compte Google principal
- Ouvrir Chrome sur Android et PC
- Vérifier que le **même compte Gmail** est connecté

#### 2. Activer la synchronisation Chrome
- Chrome → Paramètres → Compte Google → **Activer “Synchroniser”**
- Inclure “mots de passe”

#### 3. Activer l’enregistrement automatique
- Chrome → Paramètres → Mots de passe → **Activer** :
  - Enregistrement des mots de passe
  - Connexion automatique (facultatif)

#### 4. Activer l’auto-remplissage Android
- Paramètres → Système → Langue et saisie → Service d’auto-remplissage → Google

#### 5. Vérification via passwords.google.com
- Le client peut accéder à tous ses mots de passe via :
  [https://passwords.google.com](https://passwords.google.com)

---

## 🔴 Limitations importantes
- Pas de vraie application "coffre"
- Pas d'intégration avec d'autres navigateurs (ex : Firefox)
- **Incompatible avec iOS et macOS**
- Aucune gestion manuelle structurée (notes, dossiers, champs personnalisés)

---

## 🟡 Option 2 : Bitwarden (client plus autonome)

Procédure identique à [[📄 Procedure_Gestionnaire_MotsDePasse_Mixte]], à adapter à PC + Android uniquement :

1. Créer un compte Bitwarden avec un mot de passe maître
2. Installer :
   - **Extension Chrome** sur PC
   - **Application Bitwarden** sur Android
3. Activer le remplissage automatique
4. Vérifier la synchronisation entre PC ↔ Android
5. Ajouter les accès au [[Procedure Coffre Facilo]]

---

## 📎 À intégrer dans le Coffre Facilo
- Mail principal (Google ou Bitwarden)
- Mot de passe de connexion principal
- Adresse de récupération ou 2FA si activée

---

## 🧠 Conseils FACILO au client
- Ne pas créer plusieurs comptes Google
- Toujours utiliser Chrome (éviter Edge ou Firefox)
- Mot de passe Google ou Bitwarden = à consigner dans le coffre

---

## 🔁 Liens utiles
- [[📄 Analyse_Google_Password_Manager]]
- [[📄 Analyse_Bitwarden]]
- [[📄 Intervention_Installation_Gestionnaire_MDP]]
- [[Procedure Coffre Facilo]]
- [[🧰 Outils_clients_et_interventions]]
- [[📄 Fiche Client – Jean Dupont]]

---

## ✅ Statut
**Procédure validée** – à adapter selon le niveau d’aisance du client :
- débutant → Google Password Manager
- intermédiaire/avancé → Bitwarden