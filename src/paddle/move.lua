function Paddle:move(dir)
    self.y = math.max(
        math.min(
            self.y + (dir * self.paddleSpeed)
            ,WINDOW_HEIGHT_PX
        )
        ,0
    )
end