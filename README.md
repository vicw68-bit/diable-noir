# 😈 Diable Noir - Jeu de Cartes Multijoueur

Jeu de cartes à boire multijoueur en temps réel avec Firebase!

## 🎮 Jouer en ligne

**[Cliquez ici pour jouer](https://vicw68-bit.github.io/diable-noir/)**

Ou visitez: `https://vicw68-bit.github.io/diable-noir/`

## 📋 Règles du jeu

### 😈 Diable Noir (Carte Légendaire)
- Carte unique cachée dans le deck
- Si tu la possèdes quand la pioche est vide, tu perds immédiatement
- Ne peut pas être défaussée volontairement
- Ne peut pas être annulée par Bouclier ou Miroir
- Peut uniquement changer de main via des effets de vol ou d'échange

### 🟢 Cartes Bonus
- **Donne 2/3/5** - Choisis un joueur qui boit
- **Double Distribution** - 2 joueurs différents boivent 1 gorgée chacun
- **Pioche 2** - Pioche 2 cartes supplémentaires
- **Deuxième Tour** - Rejoue immédiatement
- **Protection** - Protégé contre le prochain effet de gorgées
- **Cadeau** - Un joueur pioche 2 cartes
- **Alliance** - Protection mutuelle contre les effets ciblés

### 🔴 Malus Ciblés
- **Donne +2/+3/+5** - Choisis un joueur qui boit
- **Double Peine** - 2 gorgées immédiatement + 2 à son prochain tour
- **Acharnement** - Tous les autres joueurs le visent (1 gorgée chacun)
- **Tribunal** - Vote pour désigner qui boit 4 gorgées
- **Ennemi Public** - Les attaques contre lui sont +1

### 🔴 Malus Généraux
- **Bois 2/3/5** - Tu bois (non ciblable)
- **Tous Sauf Toi** - Tous les autres boivent 1 gorgée
- **Gauche** - Le joueur à ta gauche boit 3 gorgées
- **Défausse** - Tu défausses une carte aléatoire

### 🟣 Cartes Spéciales
- **Bouclier** - Annule un effet de gorgées ou malus (pas contre Diable Noir)
- **Miroir** - Renvoie un effet ciblé à son expéditeur
- **Double Effet** - Double les gorgées de la prochaine carte
- **Bombe** - Le prochain joueur boit 5 gorgées
- **Retour de Flamme** - Renvoie automatiquement le prochain malus

### 🕵️ Cartes Information
- **Espion** - Regarde 2 cartes d'un joueur
- **Détective** - Regarde 1 carte aléatoire
- **Rayon X** - Révèle le nombre de cartes spéciales d'un joueur

### 🥷 Cartes Vol/Échange
- **Voleur** - Vole une carte aléatoire
- **Pickpocket** - Regarde et prends une carte spécifique
- **Main Mystère** - Chacun donne une carte à son voisin de droite
- **Marché Noir** - Échange une carte aléatoire
- **Échange Total** - Échange TOUTE ta main avec un autre joueur

### 🔄 Cartes UNO-Like
- **Inversion** - ↩️ Inverse le sens du jeu
- **Passe Ton Tour** - Le joueur ciblé saute son tour
- **Gel** - Le joueur ciblé perd son tour
- **Tout le Monde Pioche** - Chacun pioche 1 carte

### 💀 Cartes Chaos
- **Roulette Russe** - 50/50: Bois 4 OU donne 4 à tous les autres
- **Virus** - Les joueurs adjacents boivent 2
- **Malédiction** - Bois 1 à chaque début de ton tour
- **Cadeau Empoisonné** - Donne une carte à un joueur
- **Panique** - Tous échangent une carte aléatoire avec la droite

## 🚀 Installation locale

```bash
# Clone le repo
git clone https://github.com/vicw68-bit/diable-noir.git
cd diable-noir

# Ouvre index.html dans ton navigateur
open index.html
```

## 🔧 Configuration Firebase

1. Crée un projet Firebase sur https://firebase.google.com
2. Configure une Realtime Database
3. Remplace les identifiants dans `index.html`:

```javascript
const firebaseConfig = {
  apiKey: "TON_API_KEY",
  authDomain: "ton-domaine.firebaseapp.com",
  databaseURL: "https://ton-domaine.firebasedatabase.app",
};
```

## 🎨 Fonctionnalités

✅ Jeu multijoueur en temps réel
✅ 45+ cartes uniques avec effets complexes
✅ Système de protection et alliance
✅ Direction de jeu (Inversion)
✅ UI responsive et moderne
✅ Chat en temps réel via Firebase
✅ Gestion d'erreurs robuste

## 📱 Contrôles

- **Entrer un pseudo** - Rejoindre la partie
- **Cliquer sur un joueur** - Sélectionner une cible
- **Cliquer sur une carte** - Jouer cette carte
- **🔄 Recommencer** - Nouvelle partie

## 🎯 Comment jouer

1. **Rejoins** la partie en entrant ton pseudo
2. **Attends** que tous les joueurs se connectent
3. Le premier joueur clique **Démarrer**
4. À ton tour, **clique sur une carte** pour la jouer
5. Si tu as besoin d'une cible, **clique sur un joueur**
6. Le tour passe au joueur suivant ➡️

## ⚖️ Licence

Ce projet est sous licence MIT - Libre d'utilisation!

## 👨‍💻 Développeur

Créé par **vicw68-bit** 😈

---

**Amusez-vous bien et santé!** 🍺🎉
