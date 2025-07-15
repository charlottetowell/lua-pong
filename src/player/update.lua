function Player:update()
    require "src/player/paddle/move"
    if self.role == 1 then
        if love.keyboard.isDown("w") then
            players[1].paddle:move(-1)
        end
        if love.keyboard.isDown("s") then
            players[1].paddle:move(1)
        end
    elseif self.role == 2 then
        if love.keyboard.isDown("up") then
            players[2].paddle:move(-1)
        end
        if love.keyboard.isDown("down") then
            players[2].paddle:move(1)
        end
    end
end