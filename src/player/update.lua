function Player:update()
    require "src/player/paddle/move"
    if self.role == 1 then
        if love.keyboard.isDown("w") then
            self.paddle:move(-1)
        end
        if love.keyboard.isDown("s") then
            self.paddle:move(1)
        end
    elseif self.role == 2 then
        if love.keyboard.isDown("up") then
            self.paddle:move(-1)
        end
        if love.keyboard.isDown("down") then
            self.paddle:move(1)
        end
    end
end