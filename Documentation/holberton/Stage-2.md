# Stage 2: Project Charter Development

- [Stage 2: Project Charter Development](#stage-2-project-charter-development)
  - [1. Project Objectives](#1-project-objectives)
    - [SMART Objectives:](#smart-objectives)
  - [2. Stakeholders and Roles](#2-stakeholders-and-roles)
    - [Internal Stakeholders:](#internal-stakeholders)
    - [External Stakeholders:](#external-stakeholders)
    - [Key Responsibilities:](#key-responsibilities)
  - [3. Scope](#3-scope)
    - [In Scope:](#in-scope)
    - [Out of Scope (MVP):](#out-of-scope-mvp)
  - [4. Risk Identification](#4-risk-identification)
  - [5. High-Level Plan](#5-high-level-plan)
    - [MVP Deadline: March 15, 2025](#mvp-deadline-march-15-2025)
    - [Notes on Milestones](#notes-on-milestones)
    - [Post-MVP (starting April 2025)](#post-mvp-starting-april-2025)
  - [Conclusion](#conclusion)


## 1. Project Objectives

**General Goal:**  
Develop a 2D multiplayer Battle Royale browser game with a progressively darkening map, melee combat and chess like map destroying throught time.  

### SMART Objectives:  
1. Deliver a functional MVP prototype by March 15, 2025.  
2. Implement a secure user account management system by the end of February 2025.  
3. Test and resolve major bugs in multiplayer scenarios by March 10, 2025. (Hopefully at least) 

---

## 2. Stakeholders and Roles

### Internal Stakeholders:  
- **Arc**: Project Manager and Frontend Developer, responsible for UI design and integration and game mechanics.  
- **José**: Backend Developer, in charge of server management, databases, and business logic.  

### External Stakeholders:  
- **End Users:** Target audience aged 18–30, casual online game players.  
- **Academic Supervisors:** Advisors and mentors overseeing the project.  

### Key Responsibilities:  

| **Role**                     | **Name**      | **Main Responsibilities**                                                     |
|------------------------------|---------------|-------------------------------------------------------------------------------|
| **Project Manager**          | Arc           | Task tracking, meeting deadlines, prioritizing milestones.                    |
| **Frontend Developer**       | Arc           | Designing and developing the user interface, map design, and visual feedback. |
| **Backend Developer**        | José          | API creation, data management, server logic and player synchronization.       |
| **Game Mechanics Developer** | Arc & José    | Developing character movement, combat mechanics, and map interactions.        |


---

## 3. Scope

### In Scope:  
- MVP Features:  
  - Online multiplayer functionality.  
  - User account management (registration, login, logout).  
  - Combat and survival mechanics.  
  - Falling map.  

### Out of Scope (MVP):  
- Character skins.  
- Additional game modes (ex: solo, cooperative).  
- Boss addition
- Multiple type of characters

---

## 4. Risk Identification

| Risk                                | Probability | Impact  | Mitigation Strategy                                 |
|-------------------------------------|-------------|---------|-----------------------------------------------------|
| Development delays                  | High        | High    | Define weekly milestones for progress tracking.     |
| Technical challenges (multiplayer)  | High        | High    | Rapid prototyping and frequent testing.             |
| Lack of specific expertise          | High        | Medium  | Follow tutorials, seek guidance from other students.|
| Critical bugs near project deadline | Medium      | High    | Allocate intensive testing phases.                  |

---

## 5. High-Level Plan

### MVP Deadline: March 15, 2025

| **Milestone**                         | **Deadline**       | **Responsible**       |
|---------------------------------------|--------------------|-----------------------|
| **Initial Visual Map Prototype**      | January 20, 2025   | Anne-Cécile           |
| **Character Movement**                | January 27, 2025   | José                  |
| **Basic Lighting (Flashlight)**       | February 3, 2025   | Anne-Cécile & José    |
| **Map Interaction & Destruction**     | February 10, 2025  | José                  |
| **Real-Time Player Synchronization**  | February 17, 2025  | José                  |
| **Combat System (Basic Mechanics)**   | February 24, 2025  | Anne-Cécile & José    |
| **User Account Management**           | March 3, 2025      | José                  |
| **Initial Testing**                   | March 5, 2025      | Anne-Cécile & José    |
| **Critical Bug Fixes**                | March 10, 2025     | José                  |
| **Final MVP Delivery**                | March 15, 2025     | Anne-Cécile & José    |

---

### Notes on Milestones

1. **Initial Visual Map Prototype (January 20, 2025)**  
   Create a static, visually appealing map layout with basic tile and obstacle placement. No gameplay interaction yet.

2. **Character Movement (January 27, 2025)**  
   Implement functional movement mechanics for player characters, including collision detection with obstacles.

3. **Basic Lighting (Flashlight) (February 3, 2025)**  
   Introduce flashlight mechanics, allowing limited visibility for players and testing how lighting interacts with map elements.

4. **Map Interaction & Destruction (February 10, 2025)**  
   Add destructible zones and implement progressive area restriction. Test the timer-based map shrinking functionality.

5. **Real-Time Player Synchronization (February 17, 2025)**  
   Synchronize player positions, movements, and interactions across multiple clients using Socket.IO.

6. **Combat System (Basic Mechanics) (February 24, 2025)**  
   Implement basic melee combat mechanics with hitbox management and animation triggers.

7. **User Account Management (March 3, 2025)**  
   Set up the backend system for user authentication and management, including account creation, deletion, and password recovery.

8. **Initial Testing (March 5, 2025)**  
   Conduct preliminary testing with multiple players to identify major bugs and synchronization issues.

9. **Critical Bug Fixes (March 10, 2025)**  
   Address high-priority bugs and optimize performance for the final MVP.

10. **Final MVP Delivery (March 15, 2025)**  
    Deliver a functional multiplayer game meeting the MVP requirements.


### Post-MVP (starting April 2025)  
- Add additional game modes.  
- Develop a character customization system.  
- Create a complementary mobile app.  

---

## Conclusion

This document complements the `README.md` by specifying the objectives, stakeholders, scope, risks, and a high-level plan for better management of the "Fear Their Lights" project.  
