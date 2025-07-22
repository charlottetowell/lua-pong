require "src/globals/states/init"
require "src/globals/states/registry"
require "src/globals/globals"

menuState = GameState:new({
    key = "MENU"
    ,transition_to_key = "PLAY"
})

-- register state
StateRegistry:register(menuState.key, menuState)

local menuBackground = love.graphics.newImage( "assets/menu.png")
menuBackground:setFilter("nearest", "nearest")
local width, height = menuBackground:getDimensions()
-- 600 should come from globals window size
local scaleFactor = WINDOW_WIDTH_PX / width;

local startGameButton = {
    width=200,
    height=50,
    y=450,
    text="Start Game"
}

function menuState:draw()
    love.graphics.setColor(1,1,1);
    love.graphics.draw(menuBackground, 0, 0, 0, scaleFactor, scaleFactor);
    love.graphics.setBackgroundColor(0.35,0.2,0.6);

    --draw 'start game' button
    love.graphics.rectangle("fill",(WINDOW_WIDTH_PX-startGameButton.width)/2,startGameButton.y,startGameButton.width,startGameButton.height);
    love.graphics.setColor(0,0,0);
    love.graphics.print(startGameButton.text,(WINDOW_WIDTH_PX-startGameButton.width)/2,startGameButton.y,0,2,2)
end


function menuState:update(dt)
   -- detect if start game button clicked
    if love.mouse.isDown(1) then
        local x, y = love.mouse.getPosition()
        if x >= (WINDOW_WIDTH_PX - startGameButton.width) / 2 and
            x <= (WINDOW_WIDTH_PX + startGameButton.width) / 2 and
            y >= startGameButton.y and
            y <= startGameButton.y + startGameButton.height then
            --transition to PLAY
            StateRegistry:transitionTo(self.transition_to_key)
        end
    end
end
