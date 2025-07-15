function paddle:init(player)
    require "src/globals/globals"
    self.y = WINDOW_HEIGHT_PX / 2
    self.width = 20
    self.height = 200

    if player == 1 then
        self.x = 0
    elseif player == 2 then
        self.x = WINDOW_WIDTH_PX - self.width
    end

end

function initPaddle(player)
    paddle = {}
    paddle:init(player)
    return paddle
end