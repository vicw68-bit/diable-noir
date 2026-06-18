# 😈 Diable Noir

**Jeu de cartes à boire multijoueur en ligne** — jouez depuis le navigateur, sans installation.

[![Jouer](https://img.shields.io/badge/Jouer-maintenant-ff3333?style=for-the-badge)](https://diable-noir.fr/)
[![Licence MIT](https://img.shields.io/badge/Licence-MIT-blue?style=flat-square)](LICENSE)

---

## 🎯 C'est quoi ?

**Diable Noir** est un party game inspiré des jeux de cartes type Uno, avec des gorgées, des malédictions et beaucoup de trahisons.

- **2 joueurs minimum** (idéal en groupe)
- **Temps réel** : tout le monde voit la même partie via Firebase
- **Une seule salle publique** : partagez le lien, entrez un pseudo, c'est parti
- **Objectif** : être le premier à se débarrasser de toutes ses cartes… sans rester avec le **Diable Noir** 😈

> 🍺 Jouez responsablement. L'alcool est optionnel — remplacez par de l'eau ou un soft si vous préférez.

---

## 🚀 Jouer en 30 secondes

1. Ouvrez **[diable-noir.fr](https://diable-noir.fr/)**
2. Entrez un **pseudo** → validez
3. Le **premier joueur** (👑 hôte) clique sur **Démarrer**
4. À votre tour : **choisissez une cible** sur le cercle (si la carte le demande), puis **cliquez une carte**

**Astuce** : bouton **?** en jeu = codex complet de toutes les cartes.

---

## 📖 Règles (résumé)

| Élément | Règle |
|--------|--------|
| **Tour** | Jouez **1 carte**, puis piochez **1 carte** (sauf effets spéciaux) |
| **Timer** | **25 secondes** par tour ; **25 s** aussi pour répondre (contre, Tribunal, Pickpocket…) |
| **Cible** | Certaines cartes demandent de cliquer un joueur sur le cercle avant de jouer |
| **Contres** | **Miroir**, **Protection**, **Retour de Flamme** — jouables depuis la main quand vous êtes visé |
| **Fin de partie** | Pioche vide + un seul joueur a encore des cartes + c'est le **Diable Noir** → **cul sec** |
| **Gorgées** | Compteur visible sur chaque joueur ; classement affiché en fin de partie |

Détails complets → **[Règles du jeu](docs/regles-du-jeu.md)** · **[Liste des cartes](docs/liste-des-cartes.md)** · **[FAQ](docs/faq.md)**

---

## 🃏 Types de cartes (aperçu)

| Symbole | Type | Exemples |
|--------|------|----------|
| ★ | Bonus | Pioche 2, Cadeau, Alliance |
| ⚔ | Malus ciblé | Donne 2/3/5, Tribunal, Ennemi Public |
| ☄ | Malus global | Bois 2, Tous Sauf Toi, Gauche |
| ◆ | Spécial | Bouclier, Miroir, Bombe |
| ? | Renseignement | Espion, Détective, Rayon X |
| ♠ | Vol & échange | Voleur, Pickpocket, Échange Total |
| ↻ | Tours & sens | Inversion, Passe Ton Tour, Gel |
| ✦ | Chaos | Roulette Russe, Virus, Panique |
| ☠ | Malédiction | Diable Noir, Malédiction |

---

## ✨ Fonctionnalités

- Multijoueur temps réel (Firebase)
- **Codex** intégré (bouton `?`)
- Sons, notifications « C'est ton tour », installable en **PWA** (écran d'accueil)
- Reconnexion par **même pseudo**
- Infos secrètes (Espion / Détective) visibles seulement par le joueur qui joue
- **Tribunal** : vote in-app pour qui boit 4 🍺

---

## 📚 Documentation

| Document | Contenu |
|----------|---------|
| [Règles du jeu](docs/regles-du-jeu.md) | Déroulement, contres, fin de partie |
| [Liste des cartes](docs/liste-des-cartes.md) | Toutes les cartes et leurs effets |
| [FAQ](docs/faq.md) | Problèmes fréquents & astuces |
| [Développement](docs/developpement.md) | Firebase, déploiement, structure du projet |

Wiki GitHub (miroir) : [github.com/vicw68-bit/diable-noir/wiki](https://github.com/vicw68-bit/diable-noir/wiki)

---

## 🛠 Développeurs

Projet **100 % front** : un `index.html`, Firebase Realtime Database, GitHub Pages.

```bash
git clone https://github.com/vicw68-bit/diable-noir.git
# Ouvrir index.html via un serveur local ou GitHub Pages
```

Configuration Firebase, règles de sécurité et déploiement → **[docs/developpement.md](docs/developpement.md)**

---

## ⚠️ Problème ?

| Symptôme | Solution |
|----------|----------|
| Partie déjà en cours | Reconnectez-vous avec le **même pseudo**, ou l'hôte clique **Recommencer** |
| Accès refusé Firebase | Activez **Auth anonyme** + publiez `database.rules.json` |
| Cartes sans image | Optionnel : ajoutez les PNG dans `assets/` |

→ Voir la **[FAQ complète](docs/faq.md)**

---

## 📄 Licence

[MIT](LICENSE) — © vicw68-bit

---

<p align="center">
  <a href="https://diable-noir.fr/"><strong>▶ JOUER MAINTENANT</strong></a>
</p>
