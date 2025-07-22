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
    love.graphics.setColor(1,1,1);
    love.graphics.draw(menuBackground, 0, 0, 0, scaleFactor, scaleFactor);
    love.graphics.setBackgroundColor(0.35,0.2,0.6);

    --draw 'start game' button
    local startGameButton = {
        width=200,
        height=50,
        y=450,
        text="Start Game"
    }
    love.graphics.rectangle("fill",(600-startGameButton.width)/2,startGameButton.y,startGameButton.width,startGameButton.height);
    love.graphics.setColor(0,0,0);
    love.graphics.print(startGameButton.text,(600-startGameButton.width)/2,startGameButton.y,0,2,2)
end
