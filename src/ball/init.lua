function ball:init()
    require "src/globals/globals"
    self.x = WINDOW_WIDTH_PX / 2
    self.y = WINDOW_HEIGHT_PX / 2
    self.vel = {}
    self.vel.x = 8
    self.vel.y = 0
    self.height = 30
    self.width = 30
end

function initBall()
    ball = {}
    ball:init()
    return ball
end