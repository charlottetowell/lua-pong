require "src/globals/states/init"

gameOverState = GameState:new({
    key = "GAME_OVER"
    ,transition_to_key = "MENU"
    ,is_game_active = false
})

function gameOverState:update(dt)
    print("Updating for state " .. gameOverState.key)
end