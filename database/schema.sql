-- schema.sql
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
    password_hash TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE game_sessions (
    id SERIAL PRIMARY KEY,
    map_id INT NOT NULL,
    start_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    end_time TIMESTAMP,
    status VARCHAR(50) CHECK (status IN ('waiting', 'active', 'completed')) NOT NULL DEFAULT 'waiting'
);

CREATE TABLE players (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(id) ON DELETE CASCADE,
    game_session_id INT REFERENCES game_sessions(id) ON DELETE CASCADE,
    position_x INT NOT NULL,
    position_y INT NOT NULL,
    score INT DEFAULT 0,
    flashlight_on BOOLEAN DEFAULT FALSE,
    UNIQUE (user_id, game_session_id)
);

CREATE TABLE maps (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    grid_width INT NOT NULL,
    grid_height INT NOT NULL,
    destructible_areas JSONB NOT NULL
);

CREATE TABLE melee_weapons (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    damage INT NOT NULL,
    range INT NOT NULL
);

CREATE TABLE player_weapons (
    id SERIAL PRIMARY KEY,
    player_id INT REFERENCES players(id) ON DELETE CASCADE,
    weapon_id INT REFERENCES melee_weapons(id) ON DELETE CASCADE,
    equipped BOOLEAN DEFAULT TRUE
);

CREATE TABLE scoreboard (
    id SERIAL PRIMARY KEY,
    game_session_id INT REFERENCES game_sessions(id) ON DELETE CASCADE,
    player_id INT REFERENCES players(id) ON DELETE CASCADE,
    score INT NOT NULL DEFAULT 0
);
