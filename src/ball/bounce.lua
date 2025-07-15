function Ball:bounce()
    local positionSetback = 10

    -- reverse setback based on which paddle is hit
    if self.vel.x > 0 then
        positionSetback = positionSetback * -1
    end

    self.x = self.x + positionSetback

    -- reverse x direction
    self.vel.x = self.vel.x * -1

    -- randomise y direction
    self.vel.y = math.random(8,10)
    local r = math.random()
    if r >= 0.5 then
        self.vel.y = self.vel.y * -1
    end
end