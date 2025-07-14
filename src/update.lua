isGameOver = false

function ball:bounce()
    local positionSetback = 10
    if self.vel.x > 0 then
        positionSetback = positionSetback * -1
    end
    self.x = self.x + positionSetback
    self.vel.x = self.vel.x * -1
    self.vel.y = math.random(8, 10)
    local r = math.random()
    if r >= 0.5 then
        self.vel.y = self.vel.y * -1
    end
end

function updateGame(dt)
    if isGameOver then return end

    ball.x = ball.x + ball.vel.x
	ball.y = ball.y + ball.vel.y

    -- ball hits horizontal edge of screen (not a paddle)
    if (ball.x <= ball.width or ball.x >= (WINDOW_WIDTH_PX - ball.width)) then
        --paddles bounces
        if ball.x > leftPaddle.x - ball.width and ball.y <= leftPaddle.y + leftPaddle.height and ball.y >= leftPaddle.y - ball.height then
            ball:bounce()
        elseif ball.x < rightPaddle.x + 5 and ball.y <= rightPaddle.y + rightPaddle.height and ball.y >= rightPaddle.y - ball.height then
            ball:bounce()
        else
            -- game over
            ball.vel.x = 0
            ball.vel.y = 0
            print("GAME OVER")
            isGameOver = true
        end
    end

    -- ball hits vertical edge of screen (bounce)
    if (ball.y <= ball.height or ball.y >= (WINDOW_HEIGHT_PX - ball.height)) then
        ball.vel.y = ball.vel.y * -1
        ball.vel.x = math.random(15)
    end

    local paddleSpeed = 10
    if love.keyboard.isDown("up") and rightPaddle.y >= 0 then
        rightPaddle.y = rightPaddle.y - paddleSpeed
    end
    if love.keyboard.isDown("down") and rightPaddle.y + rightPaddle.height < WINDOW_HEIGHT_PX then
        rightPaddle.y = rightPaddle.y + paddleSpeed
    end
    if love.keyboard.isDown("w") and leftPaddle.y > 0 then
        leftPaddle.y = leftPaddle.y - paddleSpeed
    end
    if love.keyboard.isDown("s") and leftPaddle.y + leftPaddle.height < WINDOW_HEIGHT_PX then
        leftPaddle.y = leftPaddle.y + paddleSpeed
    end
end