# 🎮 Fear their Lights - 2D Multiplayer Game Project

## 📝 Project Description

This project involves developing a 2D multiplayer "Battle Royale" video game playable in a browser. The goal is to create an immersive and competitive game with the following characteristics:

- 🌑 **Map shrouded in darkness**: Players will have to navigate in a dark environment, making each movement strategic.
- 💥 **Progressive map destruction**: Play areas will become inaccessible over time, adding constant pressure.
- ⚔️ **Real-time combat system**: Players will use melee weapons with precise hitbox management.
- 👤 **User account management**: A complete system for creating, deleting, and managing accounts.

The game is designed to be extensible, with additional features planned after the delivery of the MVP (Minimum Viable Product).

🌟 **Originality**

The originality of this game lies in the addition of a survival horror touch. Unlike other battle royale games, players won't be able to simply run and shoot recklessly; they'll need to be strategic and exercise self-control.

## 🛠️ Features

**MVP (Minimum Viable Product)**

- 🕹️ **Game Features:**
  - 👥 **Multiplayer**: Up to 10-15 players per map.
  - 🗺️ **Chessboard-divided map**: Areas self-destruct and become inaccessible, with geometric scenery to hide.
  - 🗡️ **Combat system**: Melee weapons with hitbox management.
  - ⏱️ **Timer**: Game time management.
  - 🔦 **Lighting**: Flashlight for each player since the map is in darkness.
  - 🏆 **Scoreboard**: Real-time score display.
  - 🎨 **Basic gamedesign**: Basic aesthetic to begin with.

- 🖥️ **Non-Game Features:**
  - 📊 **Navigation menu**: Smooth and intuitive user interface.
  - 🔐 **User account management**:
    - Account creation with email.
    - Account deletion.
    - Password reset and modification.

- 🚀 **Post-MVP Features**
  - ❤️ **Health bar**: Tracking player status.
  - 🔫 **Firearms**: Addition of varied weapons to diversify gameplay. (to be discussed)
  - 👨‍🚀 **Character classes**: Assassin, Soldier, Tank for varied playstyles.
  - 💪 **Power-ups**: Temporary increase in health, armor, damage, speed, lighting.
  - 🎵 **Improved animations and scenery** to enrich the visual experience.
  - 🏆 **Additional game modes**: Solo, Team vs Team, Respawn.
  - 👹 **Boss (The Night Hunter)**: An additional challenge for players.

## 📋 Technology Overview

### Frontend
- 🖼️ **Framework**: [Svelte](https://svelte.dev/) - For a lightweight and reactive interface.
- 🎨 **Graphic Rendering**: HTML5 Canvas - For 2D game rendering.
- 🎮 **Game Library**: [Phaser.io](https://phaser.io/) - To facilitate gameplay development.

### Backend
- 🖥️ **Runtime**: [Node.js](https://nodejs.org/) - Server-side JavaScript environment.
- 🌐 **Web Framework**: [Express.js](https://expressjs.com/) - To handle REST APIs.
- 🔌 **Real-Time Communication**: [Socket.IO](https://socket.io/) - For real-time player synchronization    

### Database
- 🗄️ **Database**: [Supabase](https://supabase.com/) - A PostgreSQL-based database to store user data, game sessions, and scores.
- 🛠️ **ORM (Object Relational Mapper)**: [SQLAlchemy](https://www.sqlalchemy.org/) - To interact with the PostgreSQL database efficiently.
- 🔐 **Authentication**: Supabase built-in auth system to handle user registration and login.

### **Deployment & Infrastructure**
- 🐳 **Containerization**: [Docker](https://www.docker.com/) - To isolate services and facilitate development.
- ⚙️ **Orchestration**: Docker Compose - To manage multiple services easily.
- ☁️ **Hosting**: **Phaser Cloud** - To deploy and serve the game seamlessly.

## 🚀 Detailed Technical Justification

**Svelte**
- 🔍 Why?
  - Compile-time compilation.
  - Minimal bundle for optimal performance.
  - Superior performance compared to traditional frameworks.
  - Gentle learning curve, ideal for new developers.

**HTML5 Canvas & Phaser**
- ✅ Advantages
  - High-performance 2D rendering suitable for fast-paced games.
  - Native animation management, facilitating visual development.
  - Pixel art compatible for an attractive retro aesthetic.

**Node.js & Express**
- 💻 Benefits
  - Universal JavaScript (frontend/backend), simplifying full-stack development.
  - Rich npm ecosystem offering a multitude of useful libraries.
  - Efficient asynchronous management, essential for real-time applications.

**Socket.IO**
- ⚡ Key Features
  - Real-time bidirectional communication between clients and server.
  - Automatic management of user connections and disconnections.
  - Customizable events allowing flexibility in gameplay development.
  - 
**Supabase**  
- 🗄️ **Why Supabase?**  
  - **PostgreSQL-based** database with strong relational capabilities.  
  - **Flexible schema** allowing easy adaptation to evolving game requirements.  
  - **Built-in authentication** for secure and seamless user management.  
  - **Real-time database updates**, ideal for multiplayer synchronization.  
  - **Edge functions** to run server-side logic closer to users.  
  - **Scalability & hosting** without complex infrastructure management.  


**Docker**
- 🌐 Benefits
  - Reproducible development environment ensuring all developers work in an identical framework.
  - Service isolation allowing better dependency management.
  - Scalability

## 🛠 Architecture Technique

project-root/
│
├── client/  # Frontend (Svelte + Phaser + HTML5 Canvas 2D)
│   ├── src/
│   │   ├── components/   # Reusable Svelte components (UI, menus, HUD)
│   │   ├── stores/       # State management using Svelte stores
│   │   ├── game/         # Phaser logic (scenes, sprites, physics, user inputs)
│   │   ├── assets/       # Images, sounds, animations
│   │   ├── styles/       # CSS/SCSS files
│   │   ├── utils/        # Utility functions for the frontend
│   │   ├── main.js       # Main entry point for Svelte
│   ├── public/           # Static files (favicon, images, etc.)
│   ├── index.html        # Main HTML file
│   ├── vite.config.js    # Vite bundler configuration
│   └── package.json      # Frontend dependencies & scripts
│
├── server/  # Backend (Node.js + Express + Supabase)
│   ├── models/         # Database models (if using an ORM like Prisma)
│   ├── controllers/    # Business logic for handling API requests
│   ├── routes/         # Express API routes
│   ├── middleware/     # Authentication, validation, error handling
│   ├── sockets/        # Real-time communication (Socket.IO)
│   ├── services/       # Core logic (matchmaking, session management)
│   ├── logs/           # Server logs (if implemented)
│   ├── index.js        # Backend main entry point
│   ├── config.js       # Server configuration
│   ├── supabaseClient.js # Supabase database connection
│   └── package.json    # Backend dependencies & scripts
│
├── database/  # Supabase (PostgreSQL) configuration
│   ├── schema.sql      # Database schema definition
│   ├── seed.sql        # Initial test data
│   ├── migrations/     # Database migration scripts
│   ├── queries.sql     # Reusable SQL queries for debugging
│   ├── supabaseConfig/ # Supabase authentication & role management
│   └── backup/         # Database backup scripts
│
├── tests/  # Automated Testing (Unit, Integration, E2E, Performance)
│   ├── unit/           # Unit tests (Jest / Mocha)
│   ├── integration/    # API tests (Supertest)
│   ├── e2e/            # End-to-End tests (Cypress / Playwright)
│   ├── performance/    # Load testing (k6 / Artillery)
│   ├── api/            # API endpoint testing (Thunder Client / Keploy)
│   ├── game/           # Game logic tests (if applicable)
│   ├── setupTests.js   # Test setup configuration
│   ├── mocks/          # Mock files for testing without external dependencies
│   └── coverage/       # Test coverage reports
│
├── deployment/  # Infrastructure & Deployment
│   ├── docker-compose.yml  # Multi-container deployment (DB + backend)
│   ├── Dockerfile          # Backend Docker configuration
│   ├── nginx.conf          # Reverse proxy configuration
│   ├── ci-cd/              # CI/CD pipelines (GitHub Actions / GitLab CI)
│   ├── server-config/      # Server configuration (e.g., PM2)
│   └── env/                # Environment variables (dev, prod)
│
├── docs/  # Documentation
│   ├── README.md           # Project overview & installation guide
│   ├── API.md              # API endpoints documentation
│   ├── GAMEPLAY.md         # Game mechanics explanation
│   ├── ARCHITECTURE.md     # Project architecture details
│   ├── DEPLOYMENT.md       # Deployment guide
│   ├── CONTRIBUTING.md     # Contribution guidelines
│   ├── stage_phase/        # Holberton internship documentation
│   ├── images/             # Diagrams, architecture drawings, UI mockups
│   └── TECH_STACK.md       # Overview of technologies used
│
├── .gitignore          # Files ignored by Git
├── .env                # Environment variables (Supabase keys, secrets)
└── LICENSE             # Project license


## 🎯 Technical Objectives

The main technical objectives include:
- Optimal performance to ensure a smooth experience even with multiple simultaneous players.
- Smooth user experience through an intuitive and responsive interface.
- Maintainable and modular code facilitating future updates and collaboration between developers.
- Future scalability to easily integrate additional features or handle a growing number of users.
- Compliance with RNCP5 requirements to ensure the project meets required academic standards.

## 💡 Additional Recommendations

To ensure project success, it is recommended:
- To use TypeScript for enhanced static typing, which helps avoid certain common types of errors during development.
- To implement unit and integration tests to ensure code robustness before each major update or feature addition.
- To set up continuous integration (CI/CD) to automate the testing and deployment process, thus reducing the risk of human errors during code updates.
- To rigorously document the architecture and technical choices made throughout the project so that each member can quickly understand the entire system.

## 👥 Project Organization and Planning

👨‍💻 **Role Distribution**

**Besse Anne-Cécile**
- Frontend Development (Game design and visuals)
- Project Management

**Puertas José**
- Backend Development
- Frontend/Backend Integration

**Together**
- Deployment
- Frontend/backend integration
- Visual decisions
- Gameplay design (sharing when it happens)

📅 **Task Planning for MVP (March 2025)**

**MVP (March 2025)**
- Functional multiplayer game with destructible map
- Basic combat system
- User authentication and management
- Basic user interface and scoreboard
- Basic game design

**Post-MVP Features (to be planned after March 2025)**

Additional features could include:
- Adding better graphics
- Addition of firearms (to be discussed)
- Sound addition to enrich the immersive experience
- Detailed implementation of varied character classes (Assassin, Soldier, Tank, others?)
- Integration of power-ups
- Further development on various modes like "Solo" or "Team vs Team"
- Creation of a formidable boss named "The Night Hunter"

**Planning proposed by AI, to be studied**

**Week 1-2: Setup and Prototype**
- [ ] Set up development environment (Docker, Git)
- [ ] Create a simple map with destructible cells (Canvas/Phaser)
- [ ] Implement basic player movement

**Week 3-4: Initial Backend and Authentication**
- [ ] Configure Node.js server with Express
- [ ] Set up user authentication with Supabase
- [ ] Implement WebSockets for real-time communication

**Week 5-6: Basic Gameplay**
- [ ] Add flashlight mechanic
- [ ] Implement simple combat system (hitbox)
- [ ] Create game timer

**Week 7-8: Integration and Synchronization**
- [ ] Synchronize real-time data between players
- [ ] Implement progressive map destruction
- [ ] Add player health bar

**Week 9-10: User Interface and Menus**
- [ ] Create main menu and navigation interface
- [ ] Develop real-time scoreboard
- [ ] Implement game session management

**Week 11-12: Testing, Optimization, and Finalization**
- [ ] Conduct thorough testing with multiple players
- [ ] Optimize performance for 10-15 simultaneous players
- [ ] Fix bugs and refine user experience

🤝 **Exchange Modalities**
- 💬 Permanent contact via Discord to quickly exchange on progress or solve encountered problems.
- 👀 Mutual code review after each major feature to ensure code quality before integration into the main branch.
- 📊 Use of a Kanban board (Trello-type) to track the progress of tasks assigned to each person as well as those that remain to be done or reviewed.
- 📓 Regular update of the [logbook](./Documentation/MODELEjournal_de_bord.md) after each session to have a clear follow-up on what has been accomplished.

## Conclusion

From Arc [Anne-Cécile]: Creating a game has always been a dream for me, and working on this project is therefore truly important. This project is ambitious and will probably need to be scaled down but is feasible while considering the requirements of RNCP5.

From Zetrayo [José]: I have always wanted to make a videogame, and the RNCP5 gives me the best excuse to finally make one. This game is going to test every single skill that I obtained while studying at Holberton School, but it's going to be worth it at the end.

## 👨‍👩‍👧‍👦 Authors

- **Besse Anne-Cécile**: [GitHub Link](https://github.com/ArcturusSky)
- **Puertas José**: [GitHub Link](https://github.com/Zetrayo)

## 📜 License

This project is under the [MIT](LICENSE) license.
