require "src/globals/states/init"

playState = GameState:new({
    key = "PLAY"
    ,transition_to_key = "GAME_OVER"
    ,is_game_active = true
})

function playState:update(dt)
    print("Updating for state " .. playState.key)
    require "src/ball/update"
    ball:update()

    -- update players
    require "src/player/update"
    for i, player in ipairs(players) do
		player:update()
    end
end