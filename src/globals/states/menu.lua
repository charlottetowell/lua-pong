require "src/globals/states/init"

menuState = GameState:new({
    key = "MENU"
    ,transition_to_key = "PLAY"
    ,is_game_active = false
})

function menuState:update(dt)
    print("Updating for state " .. menuState.key)
end