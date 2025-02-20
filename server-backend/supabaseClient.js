const { createClient } = require('@supabase/supabase-js');

const supabase = createClient('YOUR_SUPABASE_URL', 'YOUR_SUPABASE_API_KEY');

async function testDatabaseQueries() {
    // Test 1: Retrieve Active Game Sessions
    let { data, error } = await supabase.from('game_sessions').select('*').eq('status', 'active');
    if (error) {
        console.error('Error retrieving active sessions:', error);
    } else {
        console.log('Active game sessions:', data);
    }

    // Test 2: Retrieve Scoreboard for Game Session ID 1
    const { data: scoreboardData, error: scoreboardError } = await supabase
        .from('scoreboard')
        .select('user_id, score')
        .eq('game_session_id', 1)
        .order('score', { ascending: false });
    if (scoreboardError) {
        console.error('Error retrieving scoreboard:', scoreboardError);
    } else {
        console.log('Scoreboard data:', scoreboardData);
    }

    // Test 3: Toggle Flashlight State for Player with ID 1
    const { data: playerData, error: playerError } = await supabase
        .from('players')
        .update({ flashlight_on: true })
        .eq('id', 1);
    if (playerError) {
        console.error('Error toggling flashlight:', playerError);
    } else {
        console.log('Player flashlight state updated:', playerData);
    }

    // Test 4: Insert a New Player into the Session
    const { data: newPlayer, error: insertPlayerError } = await supabase
        .from('players')
        .insert([{ user_id: 1, game_session_id: 1, position_x: 3, position_y: 4 }])
        .select('id');
    if (insertPlayerError) {
        console.error('Error inserting new player:', insertPlayerError);
    } else {
        console.log('New player inserted with ID:', newPlayer);
    }
}

testDatabaseQueries();
