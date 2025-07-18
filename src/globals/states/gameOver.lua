require "src/globals/states/init"

gameOverState = GameState:new({
    key = "GAME_OVER"
    ,transition_to_key = "MENU"
})

function gameOverState:update(dt)
    print("Updating for state " .. gameOverState.key)
end

function gameOverState:draw()
    love.graphics.print("Menu State")
end