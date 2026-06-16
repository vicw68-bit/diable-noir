# 😈 Diable Noir

Jeu de cartes à boire multijoueur en temps réel avec Firebase.

## 🎮 Jouer en ligne

**https://vicw68-bit.github.io/diable-noir/**

Partagez ce lien — tout le monde joue dans la même salle Firebase, sans installation.

## Déployer sur GitHub Pages

1. Poussez le contenu de ce dossier sur la branche `main` du dépôt [vicw68-bit/diable-noir](https://github.com/vicw68-bit/diable-noir)
2. GitHub → **Settings → Pages** → Source : **Deploy from branch** → `main` → `/ (root)`
3. Attendez 1–2 minutes, puis ouvrez le lien ci-dessus

Fichiers nécessaires sur GitHub :
- `index.html` (config Firebase incluse)
- `assets/` (images des cartes PNG)

## Firebase

Projet : **diable-noir**  
Realtime Database activée.

### 1. Activer l'authentification anonyme (obligatoire)

Firebase Console → **Authentication** → **Sign-in method** → **Anonymous** → **Activer**

Sans cette étape, le jeu affichera « Accès refusé ».

### 2. Publier les règles de sécurité

Les règles sont dans `database.rules.json` : accès **réservé aux utilisateurs authentifiés**, limité à `rooms/main` et au test `_ping`.

**Option A — Console Firebase**  
Realtime Database → **Règles** → copier le contenu de `database.rules.json` → **Publier**

**Option B — CLI Firebase**

```bash
npm install -g firebase-tools
firebase login
firebase deploy --only database --project diable-noir
```

### Domaine autorisé (si erreur de clé API)

Firebase Console → **Authentication** → **Settings** → **Authorized domains**  
Ajoutez : `vicw68-bit.github.io`

Si la clé API a des restrictions HTTP : Google Cloud Console → APIs → Credentials → autoriser `https://vicw68-bit.github.io/*`

## Comment jouer

1. Ouvrez le lien GitHub Pages
2. Entrez un pseudo → **Entrer**
3. Le premier joueur clique **Démarrer**
4. À votre tour : choisissez une cible si besoin, cliquez une carte
5. **Recommencer** efface la salle pour une nouvelle partie

## Problèmes fréquents

| Symptôme | Solution |
|----------|----------|
| Partie déjà en cours | Reconnectez-vous avec **exactement le même pseudo**, ou cliquez **Recommencer** / supprimez `rooms/main` |
| PERMISSION_DENIED | Activez **Authentication → Anonymous**, puis publiez `database.rules.json` |
| Clé API refusée | Ajoutez `vicw68-bit.github.io` aux domaines autorisés |
| Cartes sans image | Ajoutez les PNG dans le dossier `assets/` sur GitHub |

Licence MIT — vicw68-bit
