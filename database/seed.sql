-- Insert test users
INSERT INTO users (email, password_hash) VALUES
('player1@example.com', 'hashedpassword1'),
('player2@example.com', 'hashedpassword2');

-- Insert test maps
INSERT INTO maps (name, grid_width, grid_height, destructible_areas) VALUES
('Call Of Dusty', 10, 10, '[{"x":2,"y":3}, {"x":4,"y":6}]');

-- Insert test game session
INSERT INTO game_sessions (map_id, status) VALUES (1, 'waiting');

-- Insert test players
INSERT INTO players (user_id, game_session_id, position_x, position_y) VALUES
(1, 1, 5, 5),
(2, 1, 7, 8);

-- Insert test weapons
INSERT INTO melee_weapons (name, damage, range) VALUES
('Sword', 50, 2),
('Dagger', 30, 1);

-- Assign weapons to players
INSERT INTO player_weapons (player_id, weapon_id, equipped) VALUES
(1, 1, TRUE),
(2, 2, TRUE);
