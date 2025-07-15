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
    ball.vel.x = math.random(8,10)
    ball.vel.y = math.random(0,3)
    if math.random() <= 0.5 then
        ball.vel.x = ball.vel.x * -1
    else 
        ball.vel.x = ball.vel.x 
    end
    if math.random() <= 0.5 then
        ball.vel.y = ball.vel.y * -1
    else
        ball.vel.y = ball.vel.y
    end
    ball.height = 30
    ball.width = 30

    return ball
end