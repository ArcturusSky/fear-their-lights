-- Retrieve active game sessions
SELECT * FROM game_sessions WHERE status = 'active';

-- Retrieve scoreboard for a game session
SELECT p.user_id, s.score FROM scoreboard s
JOIN players p ON s.player_id = p.id
WHERE s.game_session_id = $1
ORDER BY s.score DESC;

-- Toggle flashlight state for a player
UPDATE players SET flashlight_on = NOT flashlight_on WHERE id = $1;

-- Insert a new player into a session
INSERT INTO players (user_id, game_session_id, position_x, position_y)
VALUES ($1, $2, $3, $4) RETURNING id;
