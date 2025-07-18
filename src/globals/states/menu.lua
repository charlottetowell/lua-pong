require "src/globals/states/init"

menuState = GameState:new({
    key = "MENU"
    ,transition_to_key = "PLAY"
})

function menuState:update(dt)
    print("Updating for state " .. menuState.key)
end

function menuState:draw()
    love.graphics.print("Menu State")
end