require "src/globals/states/init"

menuState = GameState:new({
    key = "MENU"
    ,transition_to_key = "PLAY"
})

function menuState:update(dt)
    print("Updating for state " .. menuState.key)
end

local menuBackground = love.graphics.newImage( "assets/menu.png")

function menuState:draw()
    love.graphics.draw(menuBackground)
end