function paddle:move()
    print("inPaddleMove function")
    -- self.y = math.max(
    --     math.min(
    --         self.y + (dir * self.paddleSpeed)
    --         ,WINDOW_HEIGHT_PX
    --     )
    --     ,0
    -- )
    self.y = self.y - 10
end