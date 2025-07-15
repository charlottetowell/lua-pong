function player:init()
    require "src/paddle/init"
    self.paddle = initPaddle(self)
    self.score = 0
end

function initPlayer()
    player = {}
    player:init()
    return player
end