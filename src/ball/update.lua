function Ball:update()
    require "src/ball/move"
    ball:move()

    require "src/ball/bounce"
    -- ball hits horizontal edge of screen (not a paddle)
    if (ball.x <= (ball.width/2) or ball.x >= (WINDOW_WIDTH_PX - (ball.width/2))) then
        --paddles bounces
        if ball.x > players[2].paddle.x - ball.width and ball.y <= players[2].paddle.y + players[2].paddle.height and ball.y >= players[2].paddle.y - ball.height then
            print("RIGHT bounce")
            ball:bounce()
        elseif ball.x < (players[1].paddle.x + players[1].paddle.width) and ball.y <= players[1].paddle.y + players[1].paddle.height and ball.y >= players[1].paddle.y + ball.height then
            print("LEFT bounce")
            ball:bounce()
        else
            -- game over
            require "src/ball/stop"
            ball:stop()
            print("GAME OVER  - ball at : (" .. ball.x .. ", " .. ball.y .. ")")
            isGameOver = true
        end
    end

    -- ball hits vertical edge of screen (bounce)
    if (ball.y <= ball.height or ball.y >= (WINDOW_HEIGHT_PX - ball.height)) then
        ball.vel.y = ball.vel.y * -1
        ball.vel.x = math.random(15)
    end
end