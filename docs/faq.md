# FAQ

[← Accueil documentation](README.md)

## Connexion & partie

### Comment rejoindre une partie ?

Ouvrez [le jeu](https://diable-noir.fr/), entrez un pseudo et validez. Attendez que l'hôte démarre (minimum 2 joueurs).

### « Partie déjà en cours » — que faire ?

- Si vous y étiez : reconnectez-vous avec **exactement le même pseudo**.
- Sinon : demandez à l'hôte de cliquer **Recommencer**, ou attendez la fin de la partie.

### Puis-je jouer sur téléphone ?

Oui. Le jeu est responsive. Sur iOS/Android vous pouvez l'ajouter à l'écran d'accueil (PWA) via le menu du navigateur.

### Pourquoi une seule salle ?

Pour l'instant tout le monde partage la salle Firebase `main`. Partagez le même lien avec votre groupe.

---

## Gameplay

### Comment jouer une carte qui cible quelqu'un ?

1. Cliquez un joueur **valide** sur le cercle (cyan).
2. Cliquez la carte dans votre main (contour cyan = jouable).

### Je suis visé — comment contrer ?

Un panneau s'ouvre : cliquez **Miroir**, **Protection** ou **Retour de Flamme** dans votre main, ou **Passer** pour subir l'effet. Vous avez **25 secondes**.

### Le timer a expiré — que se passe-t-il ?

- **Tour normal** : tour passé automatiquement.
- **Contre / Pickpocket / Tribunal** : choix aléatoire ou effet subi.

### Comment voir l'effet d'une carte ?

- **Appui long** sur une carte (mobile ou souris).
- Bouton **?** : codex complet.

### Espion / Détective : qui voit l'info ?

Seulement **vous**. Les autres voient un message générique dans le journal.

---

## Problèmes techniques

### « Accès refusé » / PERMISSION_DENIED

1. Firebase Console → **Authentication** → activer **Anonymous**.
2. Publier `database.rules.json` (voir [Développement](developpement.md)).

### Clé API refusée

Ajoutez `diable-noir.fr`, `www.diable-noir.fr` et `vicw68-bit.github.io` dans Firebase → Authentication → **Authorized domains**.

### Cartes sans image PNG

Normal si le dossier `assets/` est vide sur GitHub. Le jeu affiche des illustrations intégrées automatiquement.

### Partie bloquée (Tribunal, Pickpocket, contre…)

Le joueur **actif** peut utiliser **⏭ Passer** (anti-bug). L'**hôte** peut **Recommencer** la salle.

### Pas de notification « C'est ton tour »

Autorisez les notifications du navigateur quand le jeu le demande. Fonctionne surtout si l'onglet est en arrière-plan.

---

## Hôte & modération

### Qui peut démarrer / recommencer ?

- **Démarrer** : premier joueur de la liste (👑).
- **Recommencer** : même joueur — efface la salle pour tout le monde.

### Comment quitter sans tout casser ?

Bouton **Quitter** : vous êtes retiré, les autres peuvent continuer (s'il reste assez de joueurs).

---

## Autre

### Le jeu est-il open source ?

Oui, licence [MIT](../LICENSE). Code sur [GitHub](https://github.com/vicw68-bit/diable-noir).

### Signaler un bug

Ouvrez une [issue](https://github.com/vicw68-bit/diable-noir/issues/new/choose) sur GitHub.
