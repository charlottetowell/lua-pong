Ball = {
    x = 0
    ,y = 0
    ,vel = { x = 0,y = 0 }
    ,height = 0
    ,width = 0
}

function Ball:new()
    local ball = {}
    setmetatable(ball, self)
    self.__index = self

    require "src/globals/globals"
    ball.x = WINDOW_WIDTH_PX / 2
    ball.y = WINDOW_HEIGHT_PX / 2
    ball.vel = {}
    ball.vel.x = 8
    ball.vel.y = 0
    ball.height = 30
    ball.width = 30

    return ball
end