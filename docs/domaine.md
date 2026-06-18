# Domaine personnalisé — diable-noir.fr

Le jeu est hébergé sur **GitHub Pages**. Le domaine OVH pointe vers GitHub ; Firebase doit autoriser le nouveau domaine.

## 1. Zone DNS OVH

Dans [OVH Manager](https://www.ovh.com/manager/) → **Noms de domaine** → `diable-noir.fr` → **Zone DNS**.

### Racine `diable-noir.fr` (recommandé)

Ajoutez **4 enregistrements A** (TTL 3600 ou « par défaut ») :

| Sous-domaine | Type | Cible |
|--------------|------|-------|
| *(vide ou `@`)* | A | `185.199.108.153` |
| *(vide ou `@`)* | A | `185.199.109.153` |
| *(vide ou `@`)* | A | `185.199.110.153` |
| *(vide ou `@`)* | A | `185.199.111.153` |

Optionnel (IPv6) — 4 enregistrements **AAAA** :

| Sous-domaine | Type | Cible |
|--------------|------|-------|
| `@` | AAAA | `2606:50c0:8000::153` |
| `@` | AAAA | `2606:50c0:8001::153` |
| `@` | AAAA | `2606:50c0:8002::153` |
| `@` | AAAA | `2606:50c0:8003::153` |

### Sous-domaine `www` (optionnel)

| Sous-domaine | Type | Cible |
|--------------|------|-------|
| `www` | CNAME | `vicw68-bit.github.io` |

Ou configurez une **redirection web** OVH : `www.diable-noir.fr` → `https://diable-noir.fr`.

> Supprimez les anciens enregistrements A/CNAME en conflit sur `@` ou `www` avant d’ajouter les nouveaux.

La propagation DNS peut prendre **15 min à 48 h**. Vérifiez avec : `nslookup diable-noir.fr`

## 2. GitHub Pages

1. Repo [vicw68-bit/diable-noir](https://github.com/vicw68-bit/diable-noir) → **Settings** → **Pages**
2. **Custom domain** : `diable-noir.fr`
3. Attendre la vérification DNS (coche verte)
4. Cocher **Enforce HTTPS**

Le fichier `CNAME` à la racine du dépôt contient déjà `diable-noir.fr`.

## 3. Firebase (obligatoire pour jouer)

[Firebase Console](https://console.firebase.google.com/) → projet **diable-noir** → **Authentication** → **Settings** → **Authorized domains**.

Ajoutez :

- `diable-noir.fr`
- `www.diable-noir.fr` (si vous utilisez www)
- Gardez `vicw68-bit.github.io` (lien de secours)

## 4. Clé API Google (si restreinte)

Si la clé API Firebase est limitée par référent HTTP :

Google Cloud Console → **APIs & Services** → **Credentials** → votre clé → **Application restrictions** → **HTTP referrers** :

- `https://diable-noir.fr/*`
- `https://www.diable-noir.fr/*`
- `https://vicw68-bit.github.io/*`

## URLs

| Usage | URL |
|-------|-----|
| Principal | https://diable-noir.fr |
| Secours | https://vicw68-bit.github.io/diable-noir/ |
