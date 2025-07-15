Paddle = {
    x = 0
    ,y = 0
    ,width = 0
    ,height = 0
    ,vel = {x = 0, y = 0}
    ,paddleSpeed = 0
}

function Paddle:new(player)
    local paddle = {}
    setmetatable(paddle, self)
    self.__index = self

    require "src/globals/globals"
    paddle.y = WINDOW_HEIGHT_PX / 2
    paddle.width = 20
    paddle.height = 200

    if player.role == 1 then
        paddle.x = 0
    elseif player.role == 2 then
        paddle.x = WINDOW_WIDTH_PX - paddle.width
    end

    return paddle
end