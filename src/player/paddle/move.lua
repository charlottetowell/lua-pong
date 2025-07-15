function Paddle:move(dir)
    local y = math.max(
        math.min(
            self.y + (dir * self.paddleSpeed)
            ,WINDOW_HEIGHT_PX
        )
        ,0
    )
    if y >= 0 and y + self.height <= WINDOW_HEIGHT_PX then
        self.y = y
    end
end