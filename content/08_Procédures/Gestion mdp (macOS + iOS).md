---
type: procedure
category: gestionnaire-mots-de-passe
systemes: [macOS, iOS]
outil_recommande: trousseau_icloud
status: validé
created: 2025-07-25
author: Facilo Rapido
tags: [mot-de-passe, sécurité, apple, trousseau, iCloud, facilo-procedure]
aliases: [gestion mdp apple, trousseau apple, coffre iCloud]
cssclass: procedure-outil
related:
  - [[08_Procédures/Procedure Coffre Facilo]]
  - [[📄 Analyse_Trousseau_iCloud]]
  - [[📄 Intervention_Installation_Trousseau]]
  - [[📄 Fiche Client – Jean Dupont]]
  - [[📄 Modele_Fiche_Intervention]]
  - [[🧰 Outils_clients_et_interventions]]
---
## 🎯 Objectif
Permettre au client Apple (iPhone + Mac) d’utiliser **le trousseau iCloud** comme gestionnaire de mots de passe principal, **synchronisé automatiquement entre ses appareils**.

Le but est d’activer une solution **simple, native, sécurisée** et qui ne demande aucun outil tiers.

---

## 📋 Conditions préalables
- Le client **possède un iPhone et un Mac** (ou iPad)
- Il utilise un **identifiant Apple unique** sur tous ses appareils
- Il **connait son mot de passe Apple ID** (sinon intervention préalable obligatoire)
- La **vérification en deux étapes est activée** (impératif)

---

## ✅ Étapes d’activation

### 1. Vérifier le compte Apple ID
- Aller dans :  
  - iOS : Réglages → Nom en haut  
  - macOS : Préférences Système → Apple ID  
- Vérifier que **le même compte est utilisé sur tous les appareils**
- Noter l’adresse mail et vérifier son accès

### 2. Activer le Trousseau iCloud
#### Sur iOS :
- Réglages → Apple ID → iCloud → **Trousseau** → Activer

#### Sur macOS :
- Préférences Système → Apple ID → iCloud → **Trousseau** → Cocher

### 3. Activer le remplissage automatique
#### iOS :
- Réglages → Mots de passe → Options → **Remplir automatiquement** → cocher **Trousseau iCloud**

#### macOS (Safari) :
- Safari → Réglages → **Remplissage automatique** → cocher tout
- Activer également l’enregistrement automatique des mots de passe

---

## 🧪 Vérification du bon fonctionnement
1. Ouvrir Safari sur iPhone ou Mac
2. Se connecter à un site web (test)
3. Vérifier que le trousseau propose l’enregistrement du mot de passe
4. Se reconnecter → vérifier que le mot de passe est automatiquement proposé

---

## 📎 Accès aux mots de passe enregistrés
- iOS : Réglages → Mots de passe → Touch ID / Face ID
- macOS : Préférences Système → Mots de passe (ou via Safari → Préférences → Mots de passe)

---

## 🧠 Conseils FACILO à transmettre au client
- Le **mot de passe Apple est la clef** : il ne faut jamais le perdre
- Éviter d’utiliser plusieurs Apple ID
- Ne pas partager l’identifiant Apple avec un tiers
- En cas de doute → intervention FACILO ou consulter [[08_Procédures/Procedure Coffre Facilo]]

---

## 🔁 Liens utiles
- [[📄 Analyse_Trousseau_iCloud]]
- [[08_Procédures/Procedure Coffre Facilo]]
- [[📄 Intervention_Installation_Trousseau]]
- [[🧰 Outils_clients_et_interventions]]
- [[02_Offres_et_Services/📦 Packs_en_cours_de_création]]
- [[📄 Fiche Client – Jean Dupont]]

---

## ✅ Statut
**Procédure validée** – à appliquer systématiquement chez les clients Apple 100% (iOS + macOS).