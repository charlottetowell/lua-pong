require "src/globals/states/init"

menuState = GameState:new({
    key = "MENU"
    ,transition_to_key = "PLAY"
})

function menuState:update(dt)
    --do nothing
end

local menuBackground = love.graphics.newImage( "assets/menu.png")
menuBackground:setFilter("nearest", "nearest")
local width, height = menuBackground:getDimensions()
-- 600 should come from globals window size
local scaleFactor = 600 / width;

function menuState:draw()
    love.graphics.draw(menuBackground, 0, 0, 0, scaleFactor, scaleFactor)
end