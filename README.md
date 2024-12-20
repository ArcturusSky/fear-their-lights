- [🎮 Fear their Lights - Projet de Jeu Multijoueur 2D](#-fear-their-lights---projet-de-jeu-multijoueur-2d)
  - [📝 Description du Projet](#-description-du-projet)
  - [🛠️ Fonctionnalités](#️-fonctionnalités)
  - [📋 Vue d'Ensemble des Technologies](#-vue-densemble-des-technologies)
    - [Frontend](#frontend)
    - [Backend](#backend)
    - [Base de Données](#base-de-données)
    - [Déploiement \& Infrastructure](#déploiement--infrastructure)
  - [🚀 Justification Technique Détaillée](#-justification-technique-détaillée)
  - [🛠 Architecture Technique](#-architecture-technique)
  - [🎯 Objectifs Techniques](#-objectifs-techniques)
  - [💡 Recommandations Complémentaires](#-recommandations-complémentaires)
  - [👥 Organisation et Planification du Projet](#-organisation-et-planification-du-projet)
  - [Conclusion](#conclusion)
  - [👨‍👩‍👧‍👦 Auteurs](#-auteurs)
  - [📜 Licence](#-licence)



# 🎮 Fear their Lights - Projet de Jeu Multijoueur 2D

## 📝 Description du Projet

Ce projet consiste à développer un jeu vidéo multijoueur en 2D de type "Battle Royale" jouable sur navigateur. L'objectif est de créer un jeu immersif et compétitif avec les caractéristiques suivantes :

- 🌑 **Carte plongée dans l'obscurité** : Les joueurs devront naviguer dans un environnement sombre, rendant chaque mouvement stratégique.
- 💥 **Destruction progressive de la carte** : Les zones de jeu deviendront inaccessibles au fur et à mesure, ajoutant une pression constante.
- ⚔️ **Système de combat en temps réel** : Les joueurs utiliseront des armes de mêlée avec une gestion précise des hitboxes.
- 👤 **Gestion des comptes utilisateurs** : Un système complet pour la création, la suppression et la gestion des comptes.

Le jeu est conçu pour être extensible, avec des fonctionnalités supplémentaires prévues après la livraison du MVP (Minimum Viable Product).

🌟 **L'Originalité**

L'originalité de ce jeu réside dans l'ajout d'une touche de survival horror. Contrairement à d'autres jeux de type battle royale, les joueurs ne pourront pas simplement courir et tirer à tout va ; ils devront faire preuve de stratégie et de contrôle personnel.

---

## 🛠️ Fonctionnalités

**MVP (Minimum Viable Product)**

- 🕹️ **Fonctionnalités Jeu :**
  - 👥 **Multijoueur** : Jusqu'à 10-15 joueurs par carte.
  - 🗺️ **Carte divisée en échiquier** : Les zones s'autodétruisent et deviennent inaccessibles, avec des décors géométriques pour se cacher.
  - 🗡️ **Système de combat** : Armes de mêlée avec gestion des hitboxes.
  - ⏱️ **Chronomètre** : Gestion du temps de jeu.
  - 🔦 **Éclairage** : Lampe de poche pour chaque joueur vu que la map est dans le noir.
  - 🏆 **Scoreboard** : Affichage des scores en temps réel.
  - 🎨 **Animations et design pixel art** : Esthétique visuelle engageante.

- 🖥️ **Fonctionnalités Non-Jeu :**
  - 📊 **Menu de navigation** : Interface utilisateur fluide et intuitive.
  - 🔐 **Gestion des comptes utilisateurs** :
    - Création de compte avec email.
    - Suppression de compte.
    - Réinitialisation et modification du mot de passe.

- 🚀 **Fonctionnalités Post-MVP**
  - ❤️ **Barre de vie** : Suivi de l'état des joueurs.
  - 🔫 **Armes à feu** : Ajout d'armes variées pour diversifier le gameplay. (à débattre)
  - 👨‍🚀 **Classes de personnages** : Assassin, Soldat, Tank pour des styles de jeu variés.
  - 💪 **Power-ups** : Augmentation temporaire de vie, armure, dégâts, vitesse, éclairage.
  - 🎵 **Animations et décors améliorés** pour enrichir l'expérience visuelle.
  - 🏆 **Modes de jeu supplémentaires** : Solo, Team vs Team, Respawn.
  - 👹 **Boss (The Night Hunter)** : Un défi supplémentaire pour les joueurs.

---

## 📋 Vue d'Ensemble des Technologies

### Frontend
- 🖼️ **Framework**: [Svelte](https://svelte.dev/) - Pour une interface légère et réactive.
- 🎨 **Rendu Graphique**: HTML5 Canvas - Pour le rendu 2D du jeu.
- 🎮 **Bibliothèque de Jeu**: [Phaser.js](https://phaser.io/) - Pour faciliter le développement du gameplay.

### Backend
- 🖥️ **Runtime**: [Node.js](https://nodejs.org/) - Environnement JavaScript côté serveur.
- 🌐 **Framework Web**: [Express.js](https://expressjs.com/) - Pour gérer les APIs REST.
- 🔌 **Communication Temps Réel**: [Socket.IO](https://socket.io/) - Pour la synchronisation des joueurs en temps réel.
- 🔒 **Authentification**: [Passport.js](http://www.passportjs.org/) - Pour sécuriser les comptes utilisateurs.

### Base de Données
- 🗄️ **Base de Données**: [MongoDB](https://www.mongodb.com/) - Pour stocker les données utilisateurs et les informations du jeu.
- 📦 **ODM (Object Document Mapper)**: [Mongoose](https://mongoosejs.com/) - Pour interagir facilement avec MongoDB.

### Déploiement & Infrastructure
- 🐳 **Conteneurisation**: [Docker](https://www.docker.com/) - Pour isoler les services et faciliter le déploiement.
- ⚙️ **Orchestration**: Docker Compose - Pour gérer plusieurs conteneurs facilement.
- ☁️ **Hébergement**: [Heroku](https://www.heroku.com/) ou [DigitalOcean](https://www.digitalocean.com/) - Pour déployer l'application sur le cloud.

---

## 🚀 Justification Technique Détaillée

**Svelte**
- 🔍 Pourquoi ?
  - Compilation à la compilation (compile-time).
  - Bundle minimal pour des performances optimales.
  - Performances supérieures aux frameworks traditionnels.
  - Courbe d'apprentissage douce, idéale pour les nouveaux développeurs.

**HTML5 Canvas & Phaser**
- ✅ Avantages
  - Rendu 2D haute performance adapté aux jeux rapides.
  - Gestion native des animations, facilitant le développement visuel.
  - Compatible pixel art pour une esthétique rétro attrayante.

**Node.js & Express**
- 💻 Bénéfices
  - JavaScript universel (frontend/backend), simplifiant le développement full-stack.
  - Écosystème npm riche offrant une multitude de bibliothèques utiles.
  - Gestion asynchrone performante, essentielle pour les applications en temps réel.

**Socket.IO**
- ⚡ Caractéristiques Clés
  - Communication bidirectionnelle en temps réel entre clients et serveur.
  - Gestion automatique des connexions et déconnexions des utilisateurs.
  - Événements personnalisables permettant une flexibilité dans le développement du gameplay.

**MongoDB**
- 📈 Avantages pour le Projet
  - Schéma flexible permettant d'adapter facilement la base aux besoins changeants du jeu.
  - Stockage natif des données JSON facilitant l'interaction avec les données du jeu.

**Docker**
- 🌐 Bénéfices
  - Environnement de développement reproductible garantissant que tous les développeurs travaillent dans un cadre identique.
  - Isolation des services permettant une meilleure gestion des dépendances.
  - Scalabilité

---

## 🛠 Architecture Technique

```text
project-root/
│
├── client/               # Frontend Svelte
│   └── src/
│       ├── components/
│       ├── stores/
│       └── game/
│
├── server/               # Backend Node.js
│   ├── models/
│   ├── controllers/
│   ├── routes/
│   └── sockets/
│
├── database/             # Configuration MongoDB
│
├── docker-compose.yml
├── Dockerfile
└── README.md

```

## 🎯 Objectifs Techniques

Les objectifs techniques principaux incluent :

- Performance optimale pour assurer une expérience fluide même avec plusieurs joueurs simultanés.
- Expérience utilisateur fluide grâce à une interface intuitive et réactive.
- Code maintenable et modulaire facilitant les mises à jour futures et la collaboration entre développeurs.
- Scalabilité future pour intégrer facilement des fonctionnalités supplémentaires ou gérer un nombre croissant d'utilisateurs.
- Conformité aux exigences du RNCP5 afin d'assurer que le projet répond aux standards académiques requis.

## 💡 Recommandations Complémentaires

Pour garantir le succès du projet, il est recommandé :

- D'utiliser TypeScript pour un typage statique renforcé, ce qui aide à éviter certains types d'erreurs courantes lors du développement.
- D'implémenter des tests unitaires et d'intégration afin d'assurer la robustesse du code avant chaque mise à jour majeure ou ajout de fonctionnalité.
- De mettre en place une intégration continue (CI/CD) afin d'automatiser le processus de test et déploiement, réduisant ainsi le risque d'erreurs humaines lors des mises à jour du code.
- De documenter rigoureusement l'architecture et les choix techniques pris tout au long du projet afin que chaque membre puisse comprendre rapidement l'ensemble du système.

---

**🚧 Note importante**: L'architecture proposée est un point de départ, un brouillon à faire évoluer.

---

## 👥 Organisation et Planification du Projet

👨‍💻 **Répartition des Rôles**

**Besse Anne-Cécile**
- Développement Frontend (Gamedesign et visuels)
- Gestion du Projet

**Puertas José**
- Développement Backend
- Intégration Frontend/Backend

**Ensemble**
- Déploiement
- Intégration Frontend/backend
- Décisions visuelles
- Conception du Gameplay (partage quand ça arrivera)

📅 **Planification des Tâches pour le MVP (Mars 2025)**

**MVP (Mars 2025)**
- Jeu multijoueur fonctionnel avec carte destructible
- Système de combat basique
- Authentification et gestion des utilisateurs
- Interface utilisateur de base et scoreboard
- Animations et design de jeu

**Fonctionnalités Post-MVP (à planifier après Mars 2025)**

Les fonctionnalités additionnelles pourraient inclure :

- Ajout d'armes à feu (à débattre)
- Ajout sonore pour enrichir l'expérience immersive
- Implémentation détaillée des classes de personnages variées (Assassin, Soldat, Tank, autres ?)
- Intégration de power-ups
- Développement supplémentaire sur divers modes comme "Solo" ou "Team vs Team"
- Création d'un boss redoutable nommé "The Night Hunter"

**Planification proposée par IA, à étudier**

**Semaine 1-2 : Mise en place et Prototype**
- [ ] Configurer l'environnement de développement (Docker, Git)
- [ ] Créer une map simple avec cases destructibles (Canvas/Phaser)
- [ ] Implémenter le déplacement basique des joueurs

**Semaine 3-4 : Backend Initial et Authentification**
- [ ] Configurer le serveur Node.js avec Express
- [ ] Mettre en place l'authentification utilisateur avec MongoDB
- [ ] Implémenter les WebSockets pour la communication en temps réel

**Semaine 5-6 : Gameplay de Base**
- [ ] Ajouter la mécanique de lampe de poche
- [ ] Implémenter le système de combat simple (hitbox)
- [ ] Créer le chronomètre de jeu

**Semaine 7-8 : Intégration et Synchronisation**
- [ ] Synchroniser les données en temps réel entre les joueurs
- [ ] Implémenter la destruction progressive de la carte
- [ ] Ajouter la barre de vie des joueurs

**Semaine 9-10 : Interface Utilisateur et Menus**
- [ ] Créer le menu principal et l'interface de navigation
- [ ] Développer le scoreboard en temps réel
- [ ] Implémenter la gestion des sessions de jeu

**Semaine 11-12 : Tests, Optimisation et Finalisation**
- [ ] Effectuer des tests approfondis avec plusieurs joueurs
- [ ] Optimiser les performances pour 10-15 joueurs simultanés
- [ ] Corriger les bugs et peaufiner l'expérience utilisateur

🤝 **Modalités d'Échange**

- 💬 Contact permanent via Discord pour échanger rapidement sur l'avancement ou résoudre les problèmes rencontrés.
- 👀 Revue de code mutuelle après chaque fonctionnalité majeure afin d'assurer la qualité du code avant intégration dans la branche principale.
- 📊 Utilisation d'un tableau Kanban (typeTrello) pour suivre l'avancement des tâches assignées à chacun ainsi que celles qui restent à faire ou à revoir.
- 📓 Mise à jour régulière du [journal de bord](./Documentation/MODELEjournal_de_bord.md) après chaque session afin d'avoir un suivi clair sur ce qui a été réalisé.


## Conclusion

De Arc [Anne-Cécile]: Créer un jeu à toujours été un rêve pour moi et travailler sur ce projet est donc réellement important. Ce projet est ambitieux et probablement devra être revu à la baisse mais faisable tout en considérant les exigeances du RNCP5

---

## 👨‍👩‍👧‍👦 Auteurs
- **Besse Anne-Cécile** : [Lien GitHub](https://github.com/ArcturusSky)
- **Puertas José** : [Lien GitHub](https://github.com/Zetrayos)

## 📜 Licence
Ce projet est sous licence [MIT](LICENSE).