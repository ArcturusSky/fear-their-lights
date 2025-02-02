# Stage 3: Technical Documentation & System Design

## Sommaire

- [Stage 3: Technical Documentation \& System Design](#stage-3-technical-documentation--system-design)
  - [Sommaire](#sommaire)
  - [Introduction](#introduction)
    - [Purpose of this document](#purpose-of-this-document)
    - [Project overview](#project-overview)
    - [MVP scope](#mvp-scope)
  - [Task 0: User Stories \& Mockups](#task-0-user-stories--mockups)
    - [User stories (MoSCoW Prioritizations)](#user-stories-moscow-prioritizations)
    - [Mockups (Main Screens \& UI Elements)](#mockups-main-screens--ui-elements)
  - [Task 1: System Architecture](#task-1-system-architecture)
    - [High-level Architecture Diagram](#high-level-architecture-diagram)
    - [Technology Stack Justification](#technology-stack-justification)
  - [Task 2: Components \& Database Design](#task-2-components--database-design)
    - [Core Components Overview](#core-components-overview)
    - [Database Schema (ER Diagram)](#database-schema-er-diagram)
    - [Data Flow \& Interactions](#data-flow--interactions)
  - [Task 3: Sequence Diagrams](#task-3-sequence-diagrams)
    - [Gameplay Flow](#gameplay-flow)
    - [User Authentication Process](#user-authentication-process)
    - [MatchMaking \& Game Sessions](#matchmaking--game-sessions)
  - [Task 4: API Documentation](#task-4-api-documentation)
    - [External APIs](#external-apis)
    - [Internal API Endpoints (Routes, Inputs/Outputs)](#internal-api-endpoints-routes-inputsoutputs)
  - [Source Control \& QA Strategy](#source-control--qa-strategy)
    - [Version Control Strategy (Git Workflow)](#version-control-strategy-git-workflow)
    - [Testing Plan (Unit, Integration, End-to-end)](#testing-plan-unit-integration-end-to-end)
  - [Technical Justifications \& Constraints](#technical-justifications--constraints)
    - [Why this architecture ?](#why-this-architecture-)
    - [Scalability \& Performance Considerations](#scalability--performance-considerations)


## Introduction

In this stage we will document the creation of the prototype and the various architecture of our project. This stage will be also useful to rework on the technologies and really think them interacting with each other and taking also in count deadlines and the technologies we saw during the Holberton course.

### Purpose of this document

This document will be important because it will be the prototype, the big guidelines to "how" we will code.

### Project overview

As a reminder: This project is a video game playable on a browser.
The concept is a "Battle royal" completly in the dark. Players will have to be tactical and cautious to be able to reach each other without being caught themselves.

### MVP scope

In the MVP we decided on:
- Functional multiplayer game with destructible map
- Basic combat system
- User authentication and management
- Basic user interface and scoreboard
- Basic game design

## Task 0: User Stories & Mockups

### User stories (MoSCoW Prioritizations)


To lighten this document, you can find all the [user stories in this link](./User_stories.md)

### Mockups (Main Screens & UI Elements)

## Task 1: System Architecture

### High-level Architecture Diagram

### Technology Stack Justification

## Task 2: Components & Database Design

### Core Components Overview

### Database Schema (ER Diagram)

### Data Flow & Interactions

## Task 3: Sequence Diagrams

### Gameplay Flow

### User Authentication Process

### MatchMaking & Game Sessions

## Task 4: API Documentation

### External APIs

- **Supabase** (PostegreSQL & Authentication)
  
  - **Purpose:**
    - Manages user authentication (sign-in, login, password reset).
    - Stores game-related data (users, games sessions, scores)
  - **Why?**
    - Provides an easy-to-use PostgreSQL backend.
    - Built-in authentication system.
    - Real-time database capabilities.
  - **Relevant Endpoints:**
    - POST /auth/v1/signup → Create a new user.
    - POST /auth/v1/token?grant_type=password → Log in a user.
    - POST /auth/v1/reset → Send password reset email.
- Socket.IO (Real-time Communication)
  - **Purpose:**
    - Enables real-time multiplayer interactions (movement, attacks, game state).
  - **Why?**
    - Efficient WebSocket-based messaging.
    - Low latency, crucial for fast-paced games.
  - **Relevant Endpoints:**
    - player_movement → Syncs movement across players.
    - attack_action → Sends attack actions in real time.
    - game_update → Broadcasts state changes to all clients.

### Internal API Endpoints (Routes, Inputs/Outputs)

## Source Control & QA Strategy

### Version Control Strategy (Git Workflow)

### Testing Plan (Unit, Integration, End-to-end)

## Technical Justifications & Constraints

### Why this architecture ?

### Scalability & Performance Considerations