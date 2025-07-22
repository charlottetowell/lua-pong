require "src/globals/states/init"
require "src/globals/states/registry"

gameOverState = GameState:new({
    key = "GAME_OVER"
    ,transition_to_key = "MENU"
})

-- register state
StateRegistry:register(gameOverState.key, gameOverState)

function gameOverState:update(dt)
    print("Updating for state " .. gameOverState.key)
end

function gameOverState:draw()
    love.graphics.print("Menu State")
end