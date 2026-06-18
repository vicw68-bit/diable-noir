# Développement & déploiement

[← Accueil documentation](README.md)

## Structure du projet

```
diable-noir/
├── index.html          # Jeu complet (HTML + CSS + JS + config Firebase)
├── manifest.webmanifest
├── sw.js               # Service worker (PWA)
├── assets/             # Images PNG optionnelles des cartes
├── docs/               # Documentation joueurs & devs
├── database.rules.json # Règles Firebase Realtime Database
├── firebase.json       # Config CLI Firebase
└── README.md
```

Pas de build step : déployer = pousser sur `main` (GitHub Pages).

## Jouer en local

Le jeu utilise Firebase en ligne. Ouvrez `index.html` via un serveur local ou GitHub Pages :

```bash
# Exemple avec Python
python -m http.server 8080
# Puis http://localhost:8080
```

> L'authentification Firebase peut exiger que le domaine soit autorisé dans la console.

## Firebase

**Projet :** `diable-noir`  
**Base :** Realtime Database (région Europe)

### 1. Authentification anonyme (obligatoire)

Console Firebase → **Authentication** → **Sign-in method** → **Anonymous** → Activer

### 2. Règles de sécurité

Fichier `database.rules.json` : accès authentifié uniquement, limité à `rooms/main`.

**Console :** Realtime Database → Règles → coller le JSON → Publier

**CLI :**

```bash
npm install -g firebase-tools
firebase login
firebase deploy --only database --project diable-noir
```

### 3. Domaines autorisés

Firebase → Authentication → Settings → **Authorized domains**  
Ajouter : `diable-noir.fr`, `www.diable-noir.fr`, `vicw68-bit.github.io` (et `localhost` pour le dev si besoin)

## GitHub Pages

1. Repo → **Settings** → **Pages**
2. Source : branche `main`, dossier `/ (root)`
3. Fichiers requis : `index.html`, `assets/` (optionnel), `manifest.webmanifest`, `sw.js`, `CNAME`

URL principale : https://diable-noir.fr  
URL secours : https://vicw68-bit.github.io/diable-noir/

Voir [domaine.md](domaine.md) pour la configuration DNS OVH.

## Modifier le jeu

- **Cartes & effets** : classe `Effects`, `Deck.create()`, `CardVisuals.ART` dans `index.html`
- **Timers** : `GameController.TURN_LIMIT_MS` et `ACTION_LIMIT_MS` (actuellement 25 000 ms)
- **Salle** : `GameController.room` (défaut `"main"`)

## Pousser sur GitHub

```powershell
.\push-github.ps1
# ou
git add -A && git commit -m "..." && git push origin main
```

## Wiki GitHub

La documentation `docs/` est synchronisée avec le [wiki du dépôt](https://github.com/vicw68-bit/diable-noir/wiki).

## Sécurité

- Ne commitez pas de clés secrètes serveur (le client Firebase est public par design).
- Les règles `database.rules.json` limitent l'écriture à `rooms/main` pour les utilisateurs authentifiés.
